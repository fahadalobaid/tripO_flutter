import 'dart:html';

import 'package:dio/dio.dart';
import 'package:tripo_app/models/user.dart';
import 'package:tripo_app/services/client.dart';
import 'dart:io';

class AuthServices {
  final _dio = Dio();

  final _baseUrl = "https://6381-188-71-240-74.in.ngrok.io";
  // Future<String>
  Future<String> signup({required User user}) async {
    late String token;
    try {
      Response response = await _dio.post(
        _baseUrl + '/register/',
        data: user.toJson(),
        // options: Options(method: "Post")
      );
      token = response.data["access"];
    } on DioError catch (error) {
      print(error);
    }
    return token;
    // true;
  }
  // Future<String> signup({required User user}) async {
  //   late String token = "";
  //   try {
  //     Response response =
  //         await Client.post()("register/", data: user.toJson());
  //     // token = response.data["access"];
  //     // token = res.data.token;
  //   } on DioError catch (error) {
  //     print("error");
  //   }

  //   return token;
  // }

  Future<String> signin({required User user}) async {
    late String token;
    try {
      Response response = await
          // Client
          // .
          _dio.post('login/', data: user.toJson());
      print(response.data["access"]);
      token = response.data["access"];
    } on DioError catch (error) {
      print(error.message);
    }
    return token;
  }
}
