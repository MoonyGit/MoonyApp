/// Budget class
class ChatPreview {
  /// Constructor
  ChatPreview({
    required this.id,
    required this.imageUri,
    required this.title,
    this.description,
    this.lastMessage,
  });

  /// Id
  final String id;

  /// Image Uri
  final Uri imageUri;

  /// Title of the activity
  final String title;

  /// Description
  final String? description;

  /// Last sent message
  String? lastMessage;
}
