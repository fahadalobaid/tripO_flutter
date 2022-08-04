import 'dart:io';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:tripo_app/models/user.dart';
import 'package:tripo_app/services/auth_services.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:tripo_app/services/client.dart';

class UserProvider extends ChangeNotifier {
  User? user;
  String token = "";

  // Future<void>
  void signup(User user) async {
    token = await AuthServices().signup(user: user);
    //   SharedPreferences prefs = await SharedPreferences.getInstance();
    //   prefs.setString("myToken", token);
    //   this.user = User.fromJson(Jwt.parseJwt(token));
    //   Client.dio.options.headers = {
    //     HttpHeaders.authorizationHeader: 'Bearer $token',
    //   };
    notifyListeners();
    //   return true;
    // } on Exception catch (e) {
    //   return false;
    // }
  }

  // Future<bool>
  void signin(User user) async {
    // try {
    token = await AuthServices().signin(user: user);
    //   SharedPreferences prefs = await SharedPreferences.getInstance();
    //   prefs.setString("myToken", token);
    //   user = User.fromJson(Jwt.parseJwt(token));
    //   Client.dio.options.headers = {
    //     HttpHeaders.authorizationHeader: 'Bearer $token',
    //   };
    //   notifyListeners();
    //   return true;
    // } on Exception catch (e) {
    //   return false;
    // }
  }

  // bool get isAuth {
  //   getToken();
  //   if (token.isNotEmpty && Jwt.getExpiryDate(token)!.isAfter(DateTime.now())) {
  //     user = User.fromJson(Jwt.parseJwt(token));
  //     Client.dio.options.headers = {
  //       HttpHeaders.authorizationHeader: 'Bearer $token',
  //     };
  //     return true;
  //   }
  //   logout();
  //   return false;
  // }

  void setToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
  }

  void getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    token = prefs.getString('token') ?? "";
    notifyListeners();
  }

  void logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('token');
    token = "";
    notifyListeners();
  }
}
