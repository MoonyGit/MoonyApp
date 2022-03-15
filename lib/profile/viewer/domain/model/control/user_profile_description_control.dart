import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// Moony message inside a category of user profile information failure
class UserProfileDescriptionFailure extends Failure {}

/// Moony message inside a category of user profile information
class UserProfileDescriptionControl
    extends ValueObject<UserProfileDescriptionFailure, String> {
  /// Constructor
  const UserProfileDescriptionControl._(this.value);

  /// Factory constructor
  factory UserProfileDescriptionControl({required String input}) {
    if (input.isEmpty) {
      return UserProfileDescriptionControl._(
        left(
          UserProfileDescriptionFailure(),
        ),
      );
    } else {
      return UserProfileDescriptionControl._(right(input));
    }
  }

  @override
  final Either<UserProfileDescriptionFailure, String> value;
}
