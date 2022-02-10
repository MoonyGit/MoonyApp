import 'package:dartz/dartz.dart';
import 'package:moony_app/chat/domain/model/chat_room.dart';
import 'package:moony_app/chat/domain/repository/chat_repositories_facade.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';

/// Use case to retrieve swipe activities
class GetChatRoomUseCase
    extends AsyncUseCase<Either<Failure, List<ChatRoom>>> {
  /// Constructor
  GetChatRoomUseCase(this._chatRepository);
  final IChatRepository _chatRepository;

  @override
  Future<Either<Failure, ChatRoom>> getChatRoomById({required String input}) =>
      _chatRepository.getChatRoomById(activityId: input);

  @override
  Future<Either<Failure, List<ChatRoom>>> call({void input}) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
