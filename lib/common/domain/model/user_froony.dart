import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// User banner activity failure
class UserFroonyFailure extends Failure {}

/// User activity participated
class UserFroony extends ValueObject<UserFroonyFailure, int> {
  /// Constructor
  const UserFroony._(this.value);

  /// Factory constructor
  factory UserFroony({required int input}) {
    if (input < 0) {
      return UserFroony._(
        left(
          UserFroonyFailure(),
        ),
      );
    } else {
      return UserFroony
          ._(right(input));
    }
  }

  @override
  final Either<UserFroonyFailure, int> value;
}
