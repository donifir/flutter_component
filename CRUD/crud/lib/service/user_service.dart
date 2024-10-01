import 'package:crud/models/user.dart';
import 'package:dio/dio.dart';


class UserService {
  final Dio _dio = Dio();

  // API base URL
  final String baseUrl = 'http://192.168.98.70:8000/api';

  // Fetch All Users (Read)
  Future<List<User>> getUsers() async {
    try {
      final response = await _dio.get('$baseUrl/user');
      // print(response.data['data']);
      return (response.data['data'] as List).map((user) => User.fromJson(user)).toList();
    } catch (e) {
      // print(e);
      throw Exception('Failed to load users');
    }
  }

  // Fetch Single User (Read)
  Future<User> getUser(int id) async {
    try {
      final response = await _dio.get('$baseUrl/$id');
      return User.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to load user');
    }
  }

  // Create User
  Future<User> createUser(User user) async {
    try {
      final response = await _dio.post('$baseUrl/user/create', data: user.toJson());
      return User.fromJson(response.data['data']);
    } catch (e) {
      print('$baseUrl/user/create');
      throw Exception('Failed to create user');
    }
  }

  // Update User
  Future<User> updateUser(User user) async {
    try {
      final response = await _dio.post('$baseUrl/user/${user.id}', data: user.toJson());
      return User.fromJson(response.data['data']);
    } catch (e) {
      print('$baseUrl/user/${user.id}');
      throw Exception('Failed to update user');
    }
  }

  // Delete User
  Future<void> deleteUser(int id) async {
    try {
      await _dio.delete('$baseUrl/user/$id');
    } catch (e) {
      throw Exception('Failed to delete user');
    }
  }
}
