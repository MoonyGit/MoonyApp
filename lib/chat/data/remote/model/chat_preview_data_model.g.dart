// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_preview_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatPreviewDataModel _$ChatPreviewDataModelFromJson(
        Map<String, dynamic> json) =>
    ChatPreviewDataModel(
      activityId: json['activityId'] as String,
      imageUri: json['imageUri'] as String,
      title: json['title'] as String,
      description: json['detail'] as String,
      lastMessage: json['lastMessage'] as String,
    );

Map<String, dynamic> _$ChatPreviewDataModelToJson(
        ChatPreviewDataModel instance) =>
    <String, dynamic>{
      'activityId': instance.activityId,
      'imageUri': instance.imageUri,
      'title': instance.title,
      'detail': instance.description,
      'lastMessage': instance.lastMessage,
    };
