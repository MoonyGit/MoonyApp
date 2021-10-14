// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hobby_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HobbyDataModel _$HobbyDataModelFromJson(Map<String, dynamic> json) {
  return HobbyDataModel(
    id: json['id'] as int,
    title: json['title'] as String,
    imageUrl: json['imageUrl'] as String,
  );
}

Map<String, dynamic> _$HobbyDataModelToJson(HobbyDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
    };
