import 'package:dartz/dartz.dart';
import 'package:moony_app/chat/domain/model/chat_preview.dart';
import 'package:moony_app/chat/domain/model/chat_room.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// Swipe repository facade
abstract class IChatRepository {
  /// Request activity list that user can swipe
  Future<Either<Failure, List<ChatPreview>>> getChatPreviewList();

  /// Request activity list that user can swipe
  Future<Either<Failure, ChatRoom>> getChatRoomById(
      {required String activityId});
}