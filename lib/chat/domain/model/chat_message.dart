import 'package:moony_app/chat/domain/model/chat_message_text.dart';

/// Chat Room class
class ChatMessage {
  /// Constructor
  ChatMessage(
      this.creatorId,
      this.date,
      this.text,
  );

  /// Creator Id
  final String creatorId;

  /// Date of message
  final DateTime date;

  /// Chat message Text
  final ChatMessageText text;
}
