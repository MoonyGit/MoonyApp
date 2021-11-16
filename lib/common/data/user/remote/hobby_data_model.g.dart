// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hobby_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HobbyDataModel _$HobbyDataModelFromJson(Map<String, dynamic> json) =>
    HobbyDataModel(
      id: json['id'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      expirationDate: DateTime.parse(json['expirationDate'] as String),
    );

Map<String, dynamic> _$HobbyDataModelToJson(HobbyDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'expirationDate': instance.expirationDate.toIso8601String(),
    };
