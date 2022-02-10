// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_info_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParticipantInfoDataModel _$ParticipantInfoDataModelFromJson(
        Map<String, dynamic> json) =>
    ParticipantInfoDataModel(
      id: json['id'] as String,
      imageUri: json['imageUri'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$ParticipantInfoDataModelToJson(
        ParticipantInfoDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUri': instance.imageUri,
      'name': instance.name,
    };
