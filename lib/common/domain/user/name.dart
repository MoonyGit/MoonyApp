import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';
import 'package:moony_app/registration/resources/strings.dart';

/// Name failure
class NameFailure extends Failure{
  /// Public constructor
  const NameFailure({required String message}) : super(message: message);
}

/// Name value object class
class Name extends ValueObject<NameFailure, String> {
  const Name._(this.value);

  /// Factory constructor
  factory Name({required String input}) {
    if (input.length < _nameMinimalSize) {
      return Name._(
        left(
          const NameFailure(
              message: nameBadSizeMessageFailure),
        ),
      );
    } else {
      return Name._(right(input));
    }
  }

  @override
  final Either<NameFailure, String> value;

  static const int _nameMinimalSize = 2;
}
