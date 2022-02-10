import 'package:dartz/dartz.dart';
import 'package:moony_app/activity_creation/resources/strings.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// Title failure
class TitleFailure extends Failure{
  /// Public constructor
  const TitleFailure({required String message}) : super(message: message);
}

/// Title value object class
class Title extends ValueObject<TitleFailure, String> {
  const Title._(this.value);

  /// Factory constructor
  factory Title({required String input}) {
    if (input.length < _titleMinimumSize) {
      return Title._(
        left(
          const TitleFailure(
              message: titleBadSizeMessageFailure),
        ),
      );
    } else {
      return Title._(right(input));
    }
  }

  @override
  final Either<TitleFailure, String> value;

  static const int _titleMinimumSize = 4;
}
