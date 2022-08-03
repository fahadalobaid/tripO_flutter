// import "package:dio/dio.dart";
// import 'package:tripo_app/services/client.dart';

// class TripsServices {
//   final Dio _dio = Dio();
//   // final _baseUrl =
// }
//  class TripsServices {
//   Future<List<trip>> getTrips() async {
//     List<Trip> books = [];
//     try {
//       Response response = await Client.dio.get('/books');
//       books =
//           (response.data as List).map((book) => trip.fromJson(book)).toList();
//     } on DioError catch (error) {
//       print(error);
//     }
//     return Trips;
//   }

//   Future<Trip> createBook({required Trip trip}) async {
//     late Trip retrievedBook;
//     try {
//       // FormData data = FormData.fromMap({
//       //   "title": trip.title,
//       //   "description": trip.title,
//       //   "price": trip.price,
//       //   "image": await MultipartFile.fromFile(
//       //     trip.image,
//       //   ),
//       // });
//       // Response response = await Client.dio.post('/trips', data: data);
//       // retrievedBook = Trip.fromJson(response.data);
//     } on DioError catch (error) {
//       print(error);
//     }
//     // return retrievedTrip;
//   }

// //   Future<Trip> updateBook({required Trip trip}) async {
// //     late Trip retrievedBook;
// //     try {
// //       FormData data = FormData.fromMap({
// //         "title": trip.title,
// //         "description":trip.title,
// //         "price": trip.price,
// //         "image": await MultipartFile.fromFile(
// //           trip.image,
// //         ),
// //       });
// //       Response response = await Client.dio.put('/trips/${trip.id}', data: data);
// //       retrievedBook = Trip.fromJson(response.data);

// //     } on DioError catch (error) {
// //       print(error);
// //     }
// //     return retrievedBook;
// //   }

// //   Future<void> deleteTrip({required int tripId}) async {
// //     try {
// //       await Client.dio.delete('/trips/${tripId}');
// //     } on DioError catch (error) {
// //       print(error);
// //     }
// //   }
// // }