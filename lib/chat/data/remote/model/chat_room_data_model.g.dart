// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatRoomDataModel _$ChatRoomDataModelFromJson(Map<String, dynamic> json) =>
    ChatRoomDataModel(
      participant_info: (json['participant_info'] as List<dynamic>)
          .map((e) =>
              ParticipantInfoDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => ChatMessageDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      participant_ids_read: (json['participant_ids_read'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      activityId: json['activityId'] as String,
      activityImageUri: json['activityImageUri'] as String,
      activityName: json['activityName'] as String,
    );

Map<String, dynamic> _$ChatRoomDataModelToJson(ChatRoomDataModel instance) =>
    <String, dynamic>{
      'participant_info': instance.participant_info,
      'messages': instance.messages,
      'participant_ids_read': instance.participant_ids_read,
      'activityId': instance.activityId,
      'activityImageUri': instance.activityImageUri,
      'activityName': instance.activityName,
    };
