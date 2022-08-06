// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// import 'package:json_annotation/json_annotation.dart';

// part 'trips.g.dart';

// @JsonSerializable()
// class Trips {
//   int ownerId;
//   String title;
//   String image;
//   String discription;
//   Trips({
//     required this.ownerId,
//     required this.title,
//     required this.image,
//     required this.discription,
//   });
  

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'ownerId': ownerId,
//       'title': title,
//       'image': image,
//       'discription': discription,
//     };
//   }

//   factory Trips.fromMap(Map<String, dynamic> map) {
//     return Trips(
//       ownerId: map['ownerId'] as int,
//       title: map['title'] as String,
//       image: map['image'] as String,
//       discription: map['discription'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Trips.fromJson(String source) => Trips.fromMap(json.decode(source) as Map<String, dynamic>);
// }
