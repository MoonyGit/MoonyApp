// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessageDataModel _$ChatMessageDataModelFromJson(
        Map<String, dynamic> json) =>
    ChatMessageDataModel(
      creatorId: json['creatorId'] as String,
      date: DateTime.parse(json['date'] as String),
      text: json['text'] as String,
    );

Map<String, dynamic> _$ChatMessageDataModelToJson(
        ChatMessageDataModel instance) =>
    <String, dynamic>{
      'creatorId': instance.creatorId,
      'date': instance.date.toIso8601String(),
      'text': instance.text,
    };
