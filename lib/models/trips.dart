import 'package:json_annotation/json_annotation.dart';
part 'trips.g.dart';

@JsonSerializable()
class Trips {
  int? id;
  String? title;
  String? description;
  String? image;
  int? user;

  Trips({
    this.id,
    this.title,
    this.description,
    this.image,
    this.user,
  });

  factory Trips.fromJson(Map<String, dynamic> json) => _$TripsFromJson(json);
  Map<String, dynamic> toJson() => _$TripsToJson(this);
}
