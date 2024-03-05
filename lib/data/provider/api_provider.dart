import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:dio/dio.dart';

import 'package:hypee/config/constants.dart';
import 'package:hypee/data/provider/authentication_interceptor.dart';
import 'package:hypee/data/provider/retry_interceptor.dart';

class ApiProvider {
  ApiProvider._(this._dio);

  final Dio _dio;

  static Future<ApiProvider> initialize() async {
    const baseUrl = Constants.baseUrl;

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

    return ApiProvider._(dio);
  }

  static Map<String, dynamic> _parseAndDecode(String response) {
    return jsonDecode(response) as Map<String, dynamic>;
  }

  static Future<Map<String, dynamic>> _parseJson(String text) {
    return compute(_parseAndDecode, text);
  }
}
