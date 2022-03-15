import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// Moony message inside a category of user profile information failure
class UserProfileMoonyMessageFailure extends Failure {}

/// Moony message inside a category of user profile information
class UserProfileMoonyMessage
    extends ValueObject<UserProfileMoonyMessageFailure, String> {
  /// Constructor
  const UserProfileMoonyMessage._(this.value);

  /// Factory constructor
  factory UserProfileMoonyMessage({required String input}) {
    if (input.isEmpty) {
      return UserProfileMoonyMessage._(
        left(
          UserProfileMoonyMessageFailure(),
        ),
      );
    } else {
      return UserProfileMoonyMessage._(right(input));
    }
  }

  @override
  final Either<UserProfileMoonyMessageFailure, String> value;
}
