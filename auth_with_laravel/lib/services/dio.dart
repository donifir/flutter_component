import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

final dio = Dio(); // With default `Options`.

void configureDio() {
  // Set default configs
  dio.options.baseUrl = 'http://127.0.0.1:8000/api';
  dio.options.connectTimeout = Duration(seconds: 5);
  dio.options.receiveTimeout = Duration(seconds: 3);
  dio.options.headers['accept']='Aplication/Json';

  // Or create `Dio` with a `BaseOptions` instance.
  final options = BaseOptions(
    baseUrl: 'http://127.0.0.1:8000/api',
    connectTimeout: Duration(seconds: 5),
    receiveTimeout: Duration(seconds: 3),

  );
  final anotherDio = Dio(options);
}