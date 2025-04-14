import 'package:auth_with_laravel/models/user.dart';
import 'package:auth_with_laravel/services/dio.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Auth extends ChangeNotifier {
  bool _isLoggedIn = false;

// Create storage
  final storage = new FlutterSecureStorage();

  late UserModel _user;
  late String _token;

  bool get authenticated => _isLoggedIn;
  UserModel get user => _user;

  void login(Map creds) async {
    //ini diubah eps 4
    // print(creds);
    try {
      final response =
          await dio.post('http://127.0.0.1:8000/api/login', data: creds);
      final data = response.data;
      _token = data['token'];
      tryToken(_token);
      print(_token);
    } catch (e) {
      print(e);
    }
    // _isLoggedIn = true;
    // notifyListeners();
  }

  void tryToken(String token) async {
    if (token == null) {
      return;
    } else {
      print('log');
      try {
        final response = await dio.get(
          'http://127.0.0.1:8000/api/cek-login',
          options: Options(
            headers: {
              'Authorization': 'Bearer ${token}',
            },
          ),
        );
        Map<String, dynamic> responseData = response.data;
        Map<String, dynamic> userData = responseData['data'];

        print(userData);
        _isLoggedIn = true;
        _user = UserModel.fromMap(userData);
        storeToken(_token);
        notifyListeners();
      } catch (e) {
        print('error');
        // print(e);
      }
    }
  }

  void storeToken(String token) async {
    await storage.write(key: 'token', value: token);
  }

  void logout() async {
    // _isLoggedIn = false;
    // notifyListeners();
    dynamic tokens = await storage.read(key: 'token');
    try {
      final response = await dio.post(
        'http://127.0.0.1:8000/api/logout',
        options: Options(
          headers: {
            'Authorization': 'Bearer ${tokens}',
          },
        ),
      );
      print(response);
      cleaneUp();
      notifyListeners();
    } catch (e) {
      print('error');
    }
  }

  void cleaneUp() async {
    // this._user=null;
    _isLoggedIn = false;
    _token = '';
    await storage.delete(key: 'token');
  }
}
