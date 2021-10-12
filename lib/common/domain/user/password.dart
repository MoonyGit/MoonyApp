import 'package:dartz/dartz.dart';
import 'package:moony_app/authentication/resources/strings.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// Password failure
class PasswordFailure extends Failure {
  /// Public constructor
  const PasswordFailure({required String message}) : super(message: message);
}

/// Password value object class
class Password extends ValueObject<PasswordFailure, String> {
  const Password._(this.value);

  /// Factory constructor
  factory Password({required String input}) {
    if (input.length < _passwordMinimalSize) {
      return Password._(
        left(
          const PasswordFailure(
              message: passwordBadSizeMessageFailure),
        ),
      );
    } else {
      return Password._(right(input));
    }
  }

  @override
  final Either<PasswordFailure, String> value;

  static const int _passwordMinimalSize = 8;
}
