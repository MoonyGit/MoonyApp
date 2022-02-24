import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// User banner activity failure
class UserActivityFailure extends Failure {}

/// User activity participated
class UserActivity extends ValueObject<UserActivityFailure, int> {
  /// Constructor
  const UserActivity._(this.value);

  /// Factory constructor
  factory UserActivity({required int input}) {
    if (input < 0) {
      return UserActivity._(
        left(
          UserActivityFailure(),
        ),
      );
    } else {
      return UserActivity._(right(input));
    }
  }

  @override
  final Either<UserActivityFailure, int> value;
}
