import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:moony_app/chat/data/remote/chat_preview_remote_source.dart';
import 'package:moony_app/chat/data/remote/model/chat_preview_data_model.dart';
import 'package:moony_app/chat/data/remote/model/chat_room_data_model.dart';

///TODO: Database integration

/// ChatPreview data source implementation
class ChatPreviewRemoteSource implements IChatPreviewRemoteSource {
  /// Constructor
  ChatPreviewRemoteSource(this._database);

  late final FirebaseFirestore _database;

  @override
  Future<List<ChatPreviewDataModel>> getChatPreviewList() {
    // TODO: implement getChatPreviewList
    throw UnimplementedError();
  }

  @override
  Future<ChatRoomDataModel> getChatRoomById({required String activityId}) {
    // TODO: implement getChatRoomById
    throw UnimplementedError();
  }
}
