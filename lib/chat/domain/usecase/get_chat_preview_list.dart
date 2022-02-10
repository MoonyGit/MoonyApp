import 'package:dartz/dartz.dart';
import 'package:moony_app/chat/domain/model/chat_preview.dart';
import 'package:moony_app/chat/domain/repository/chat_repositories_facade.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';

/// Use case to retrieve swipe activities
class GetChatPreviewListUseCase
    extends AsyncUseCase<Either<Failure, List<ChatPreview>>> {
  /// Constructor
  GetChatPreviewListUseCase(this._chatRepository);

  final IChatRepository _chatRepository;

  @override
  Future<Either<Failure, List<ChatPreview>>> getChatPreviewList(
      {required String input}) =>
      _chatRepository.getChatPreviewList();

  @override
  Future<Either<Failure, List<ChatPreview>>> call({void input}) {
    // TODO: implement call
    throw UnimplementedError();
  }
}