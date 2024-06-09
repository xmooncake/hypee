import 'package:dio/dio.dart';

class AuthenticationInterceptor extends Interceptor {
  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    // switch (response.statusCode) {
    //   case 401:
    // }

    super.onResponse(response, handler);
  }
}
