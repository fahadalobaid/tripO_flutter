// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trips.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trips _$TripsFromJson(Map<String, dynamic> json) => Trips(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      user: json['user'] as int?,
    );

Map<String, dynamic> _$TripsToJson(Trips instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'user': instance.user,
    };
