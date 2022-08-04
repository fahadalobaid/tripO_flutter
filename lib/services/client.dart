import 'package:dio/dio.dart';

class Client {
  static const _baseUrl =
      "https://5862-2a00-1851-8004-d030-39d0-3049-5470-7ddc.in.ngrok.io/";
  static final Dio dio = Dio(BaseOptions(baseUrl: _baseUrl));
}
