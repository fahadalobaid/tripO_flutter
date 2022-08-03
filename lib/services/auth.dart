// import 'package:dio/dio.dart';
// import 'package:tripo_app/services/client.dart';

// import '../models/user.dart';

// Future<String> signin({required User user}) async {
//   late String token;
//   try {
//     Response response = await Client.dio.post('/signin', data: user.toJson());
//     token = response.data["token"];
//   } on DioError catch (error) {
//     print(error);
//   }
//   return token;
// }
