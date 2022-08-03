import 'package:json_annotation/json_annotation.dart';
part 'trips.g.dart';

@JsonSerializable()
class Trips {
  int ownerId;
  String title;
  String image;
  String discription;
  Trips(
      {required this.ownerId,
      required this.title,
      required this.image,
      required this.discription});

  factory Trips.fromJson(Map<String, dynamic> json) => _$TripsFromJson(json);
  Map<String, dynamic> toJson() => _$TripsToJson(this);
}
