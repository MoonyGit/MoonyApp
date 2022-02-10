import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

abstract class ChatMessageTextException extends Failure{}
class EmptyChatMessageTextException extends ChatMessageTextException{}
class TooLongChatMessageTextException extends ChatMessageTextException{}

class ChatMessageText extends ValueObject<ChatMessageTextException, String>{
  const ChatMessageText._(this.value);

  /// Factory constructor
  factory ChatMessageText({required String input}){
    if (input.isEmpty) {
      return ChatMessageText._(left(EmptyChatMessageTextException()));
    }
    else if(input.length >= _maxMessageLength){
      return ChatMessageText._(left(TooLongChatMessageTextException()));
    }
    else{
      return ChatMessageText._(right(input));
    }
  }

  static const int _maxMessageLength = 500;

  @override
  final Either<ChatMessageTextException, String> value;
}
