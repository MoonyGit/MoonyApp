import 'package:moony_app/chat/data/remote/model/chat_preview_data_model.dart';
import 'package:moony_app/chat/data/remote/model/chat_room_data_model.dart';

/// Swipe data source
abstract class IChatPreviewRemoteSource {
  /// Get chat preview by ID
  Future<List<ChatPreviewDataModel>> getChatPreviewList();

  /// Get chat room by ID
  Future<ChatRoomDataModel?> getChatRoomById({required String activityId});
}
