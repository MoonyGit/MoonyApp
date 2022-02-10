import 'package:json_annotation/json_annotation.dart';
import 'package:moony_app/chat/data/remote/model/chat_message_data_model.dart';
import 'package:moony_app/chat/data/remote/model/participant_info_data_model.dart';
import 'package:moony_app/chat/domain/model/chat_room.dart';

part 'chat_room_data_model.g.dart';

/// Chat Room class
@JsonSerializable()
class ChatRoomDataModel {
  /// Constructor
  ChatRoomDataModel({
    required this.participant_info,
    required this.messages,
    required this.participant_ids_read,
    required this.activityId,
    required this.activityImageUri,
    required this.activityName,
  });

  /// Convert Object from json
  factory ChatRoomDataModel.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomDataModelFromJson(json);

  /// Currency
  final List<ParticipantInfoDataModel> participant_info;

  final List<ChatMessageDataModel> messages;

  /// List of participants who have seen the chat room for at least one time
  final List<String> participant_ids_read;

  /// Activity's ID
  final String activityId;

  /// Activity's image
  final String activityImageUri;

  /// Name of the activity
  final String activityName;
}

/// Swipe item mapper
extension ChatRoomMapper on ChatRoomDataModel {
  /// Mapper method
  ChatRoom toDomain() => ChatRoom(
    activityId: activityId,
    activityImageUri: activityImageUri as Uri,
    activityName: activityName,
    participant_info: participant_info.toDomain(),
    messages: messages.toDomain(),
    participant_ids_read: participant_ids_read,
  );
}

/// Swipe item list mapper
extension ChatPreviewListMapper on List<ChatRoomDataModel> {
  /// Mapper method
  List<ChatRoom> toDomain() =>
      map((ChatRoomDataModel item) => item.toDomain()).toList();
}