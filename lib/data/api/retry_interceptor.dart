import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';

class RetryInterceptor extends Interceptor {
  RetryInterceptor({
    required this.dio,
    this.maxRetries = 5,
    this.baseDelay = 1,
  });

  final Dio dio;
  final int maxRetries;
  final int baseDelay;

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    final retryCount = err.requestOptions.extra['retries'] as int? ?? 0;

    if (retryCount < maxRetries) {
      log('Attempt to retry for ${err.requestOptions.path}. Retry $retryCount/$maxRetries.');

      err.requestOptions.extra['retries'] = retryCount + 1;

      final increasingDelay = baseDelay * retryCount;

      await Future.delayed(Duration(seconds: increasingDelay));

      try {
        return dio.fetch(err.requestOptions).then(
              (res) => handler.resolve(res),
              onError: (e) => handler.reject(e as DioException),
            );
      } catch (e) {
        return super.onError(err, handler);
      }
    }

    return super.onError(err, handler);
  }
}
