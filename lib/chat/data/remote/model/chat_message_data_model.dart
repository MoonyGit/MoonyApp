import 'package:json_annotation/json_annotation.dart';
import 'package:moony_app/chat/domain/model/chat_message.dart';
import 'package:moony_app/chat/domain/model/chat_message_text.dart';

part 'chat_message_data_model.g.dart';

/// Chat preview class

@JsonSerializable()
class ChatMessageDataModel {
  /// Constructor
  ChatMessageDataModel({
    required this.creatorId,
    required this.date,
    required this.text,
  });

  /// Creator Id
  final String creatorId;

  /// Date of message
  final DateTime date;

  /// Chat message Text
  final String text;

  /// Convert Object from json
  factory ChatMessageDataModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageDataModelFromJson(json);

  /// Convert object to json
  Map<String, dynamic> toJson() => _$ChatMessageDataModelToJson(this);
}


/// Swipe item mapper
extension ChatMessageMapper on ChatMessageDataModel {
  /// Mapper method
  ChatMessage toDomain() => ChatMessage(
      creatorId,
      date,
      ChatMessageText(input: text),
  );
}

/// Swipe item list mapper
extension ChatPreviewListMapper on List<ChatMessageDataModel> {
  /// Mapper method
  List<ChatMessage> toDomain() =>
      map((ChatMessageDataModel item) => item.toDomain()).toList();
}