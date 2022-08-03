// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trips.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trips _$TripsFromJson(Map<String, dynamic> json) => Trips(
      ownerId: json['ownerId'] as int,
      title: json['title'] as String,
      image: json['image'] as String,
      discription: json['discription'] as String,
    );

Map<String, dynamic> _$TripsToJson(Trips instance) => <String, dynamic>{
      'ownerId': instance.ownerId,
      'title': instance.title,
      'image': instance.image,
      'discription': instance.discription,
    };
