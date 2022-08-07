import 'dart:io';

import 'package:tripo_app/models/trip.dart';
import 'package:tripo_app/providers/auth_provider.dart';

import 'package:dio/dio.dart';

class TripsServices {
  final Dio _dio = Dio();

  final _baseUrl = 'https://7b81-91-140-195-180.eu.ngrok.io/';

  Future<List<Trip>> getTrips() async {
    List<Trip> trips = [];
    try {
      Response response = await _dio.get(_baseUrl + "Trips-List/");
      trips =
          (response.data as List).map((trip) => Trip.fromJson(trip)).toList();
    } on DioError catch (error) {
      print(error);
    }
    return trips;
  }

  Future<bool> CreateTrip(
      {required String title,
      required String description,
      required File image}) async {
    String token = await UserProvider().getToken();
    print(token);
    bool check = false;

    try {
      FormData data = FormData.fromMap({
        "title": title,
        "description": description,
        "image": await MultipartFile.fromFile(image.path),
      });
      // _dio.options.headers["Authorization"] = "Bearer ${token}";

      Response response = await _dio.post(_baseUrl + 'CreatTrip/', data: data);
      check = true;

      //token = response.data["token"];
    } on DioError catch (error) {
      print(error);
    }
    return check;
  }

  Future<bool> UpdateTrip(
      {required int TripID,
      required String title,
      required String description,
      required File image}) async {
    String token = await UserProvider().getToken();
    print(token);
    bool check = false;

    try {
      FormData data = FormData.fromMap({
        "title": title,
        "description": description,
        "image": await MultipartFile.fromFile(image.path),
      });
      // _dio.options.headers["Authorization"] = "Bearer ${token}";

      Response response = await _dio.put(_baseUrl + '', data: data);
      check = true;
    } on DioError catch (error) {
      print(error);
    }
    return check;
  }

  Future<bool> DeleteTrip({required int TripID}) async {
    Future<String> token = UserProvider().getToken();
    print(token);
    bool check = false;

    try {
      // _dio.options.headers["Authorization"] = "Bearer ${token}";

      Response response =
          await _dio.delete(_baseUrl + '/trips/${TripID}/delete/');
      check = true;
    } on DioError catch (error) {
      print(error);
    }
    return check;
  }
}
