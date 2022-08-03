// import 'package:dio/dio.dart';
// import 'package:tripo_app/models/user.dart';
// import 'package:tripo_app/services/client.dart';

// class AuthServices {
//   final Dio _dio = Dio();

//   // final _baseUrl = '';
// }

// class AuthServices {
//   Future<String> signup({required User user}) async {
//     late String token;
//     try {
//       Response response = await Client.dio.post('/signup', data: user.toJson());
//       token = response.data["token"];
//     } on DioError catch (error) {
//       print(error);
//     }
//     return token;
//   }
// }
