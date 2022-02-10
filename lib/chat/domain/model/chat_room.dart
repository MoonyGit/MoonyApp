import 'package:moony_app/chat/domain/model/chat_message.dart';
import 'package:moony_app/chat/domain/model/participant_info.dart';

/// Chat Room class
class ChatRoom {
  /// Constructor
  ChatRoom({
    required this.activityId,
    required this.activityImageUri,
    required this.activityName,
    required this.participant_info,
    required this.messages,
    required this.participant_ids_read,
  });

  /// Activity's ID
  final String activityId;

  /// Activity's image
  final Uri activityImageUri;

  /// Name of the activity
  final String activityName;

  /// Currency
  final List<ParticipantInfo> participant_info;

  /// Messages
  final List<ChatMessage> messages;

  /// List of participants who have seen the chat room for at least one time
  final List<String> participant_ids_read;
}
