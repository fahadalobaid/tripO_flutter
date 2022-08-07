import 'package:json_annotation/json_annotation.dart';
part 'trip.g.dart';

@JsonSerializable()
class Trip {
  int? id;
  String? title;
  String? description;
  String? image;
  int? owner;

  Trip({
    this.id,
    this.title,
    this.description,
    this.image,
    this.owner,
  });

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);
  Map<String, dynamic> toJson() => _$TripToJson(this);
}
