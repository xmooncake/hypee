import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:dio/dio.dart';

import 'package:hypee/data/api/authentication_interceptor.dart';
import 'package:hypee/data/api/retry_interceptor.dart';

class ApiClient {
  ApiClient._(this._dio);

  final Dio _dio;

  static Future<ApiClient> initialize() async {
    final dio = Dio(
      BaseOptions(

          // queryParameters: {'api_token': },
          ),
    );

    dio.transformer = BackgroundTransformer()..jsonDecodeCallback = _parseJson;

    dio.interceptors.addAll([
      AuthenticationInterceptor(),
      RetryInterceptor(dio: dio),
    ]);

    return ApiClient._(dio);
  }

  static Map<String, dynamic> _parseAndDecode(String response) {
    return jsonDecode(response) as Map<String, dynamic>;
  }

  static Future<Map<String, dynamic>> _parseJson(String text) {
    return compute(_parseAndDecode, text);
  }
}
