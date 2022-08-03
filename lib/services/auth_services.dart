import 'package:dio/dio.dart';
import 'package:tripo_app/models/user.dart';
import 'package:tripo_app/services/client.dart';
import 'dart:io';

class AuthServices {
  final _dio = Dio();
  Future<String> signup({required User user}) async {
    late String token = "";
    try {
      Response res = await _dio.post("path", data: user.toJson());
      token = res.data.token;
    } on DioError catch (error) {
      print("error");
    }

    return token;
  }

  Future<String> signin({required User user}) async {
    late String token;
    try {
      Response response = await Client.dio.post('/signin', data: user.toJson());
      token = response.data["token"];
    } on DioError catch (error) {
      print(error.message);
    }
    return token;
  }
}
