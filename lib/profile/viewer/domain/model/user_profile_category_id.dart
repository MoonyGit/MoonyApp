import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// User profile category value object
class UserProfileCategoryId extends ValueObject<Failure, String> {
  /// Default constructor
  const UserProfileCategoryId._(this.value);

  /// Factory constructor
  factory UserProfileCategoryId({required String input}) {
    return UserProfileCategoryId._(right(input));
  }

  @override
  final Either<Failure, String> value;
}
