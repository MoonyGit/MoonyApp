import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/value_object.dart';
import 'package:moony_app/common/resources/strings.dart';

/// Password failure
class PasswordFailure {
  /// Public constructor
  const PasswordFailure({required this.message});

  /// Message of the failure
  final String message;
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
              message: AppStrings.passwordBadSizeMessageFailure),
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
