import 'package:dio/dio.dart';

class Client {
  static final Dio dio =
      Dio(BaseOptions(baseUrl: 'https://e314-188-71-240-74.in.ngrok.io/'));
}
