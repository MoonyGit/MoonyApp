import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// Title of category entity failure
class UserProfilePreferenceTitleFailure extends Failure {}

/// Title of category entity
class UserProfilePreferenceTitle
    extends ValueObject<UserProfilePreferenceTitleFailure, String> {
  /// Constructor
  const UserProfilePreferenceTitle._(this.value);

  /// Factory constructor
  factory UserProfilePreferenceTitle({required String input}) {
    if (input.isEmpty) {
      return UserProfilePreferenceTitle._(
        left(
          UserProfilePreferenceTitleFailure(),
        ),
      );
    } else {
      return UserProfilePreferenceTitle._(right(input));
    }
  }

  @override
  final Either<UserProfilePreferenceTitleFailure, String> value;
}
