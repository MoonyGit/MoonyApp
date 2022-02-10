import 'package:json_annotation/json_annotation.dart';
import 'package:moony_app/chat/domain/model/chat_preview.dart';

part 'chat_preview_data_model.g.dart';

@JsonSerializable()
/// Chat preview class
class ChatPreviewDataModel {
  /// Constructor
  ChatPreviewDataModel({
    required this.activityId,
    required this.imageUri,
    required this.title,
    required this.description,
    required this.lastMessage,
  });


  /// Convert Object from json
  factory ChatPreviewDataModel.fromJson(Map<String, dynamic> json) =>
      _$ChatPreviewDataModelFromJson(json);

  /// Convert object to json
  Map<String, dynamic> toJson() => _$ChatPreviewDataModelToJson(this);

  /// Id
  final String activityId;

  /// Image Uri
  @JsonKey(name: "imageUri")
  final String imageUri;

  /// Title of the activity
  @JsonKey(name: "title")
  final String title;

  /// Description
  @JsonKey(name: "detail")
  final String description;

  /// Last sent message
  @JsonKey(name: "lastMessage")
  final String lastMessage;
}

/// Swipe item mapper
extension ChatPreviewMapper on ChatPreviewDataModel {
  /// Mapper method
  ChatPreview toDomain() => ChatPreview(
      id: activityId,
      imageUri: imageUri as Uri,
      title: title,
      description: description,
      lastMessage: lastMessage,
      );
}

/// Swipe item list mapper
extension ChatPreviewListMapper on List<ChatPreviewDataModel> {
  /// Mapper method
  List<ChatPreview> toDomain() =>
      map((ChatPreviewDataModel item) => item.toDomain()).toList();
}