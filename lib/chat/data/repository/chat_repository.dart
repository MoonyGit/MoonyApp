import 'package:dartz/dartz.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/authentication/data/remote/authentication_data_source.dart';
import 'package:moony_app/chat/data/remote/chat_preview_remote_source.dart';
import 'package:moony_app/chat/data/remote/model/chat_preview_data_model.dart';
import 'package:moony_app/chat/domain/model/chat_preview.dart';
import 'package:moony_app/chat/domain/model/chat_room.dart';
import 'package:moony_app/chat/domain/repository/chat_repositories_facade.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// Implementation of ISwipeRepository
class ChatRepository
    implements IChatRepository {
  /// Constructor
  ChatRepository(this._chatSource, this._authSource);

  final IChatPreviewRemoteSource _chatSource;
  final AuthDataSource _authSource;

  @override
  Future<Either<Failure, List<ChatPreview>>> getChatPreviewList() async =>
  (await _getUserId())?.let((String userId) => _chatSource
      .getChatPreviewList()
      .then((List<ChatPreviewDataModel> value) => right(value.toDomain()))) ??
      left(const Failure());

  Future<String?> _getUserId() async =>
      (await _authSource.getSignedInUser())?.id;

  @override
  Future<Either<Failure, ChatRoom>> getChatRoomById({required String activityId}) {
    // TODO: implement getChatRoomById
    throw UnimplementedError();
  }
}
