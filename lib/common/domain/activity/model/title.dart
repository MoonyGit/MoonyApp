import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// ActivityTitle failure
class ActivityTitleFailure extends Failure {}

/// ActivityTitle value object class
class ActivityTitle extends ValueObject<ActivityTitleFailure, String> {
  const ActivityTitle._(this.value);

  /// Factory constructor
  factory ActivityTitle({required String input}) {
    if (input.length > maxChar && input.length < minChar) {
      return ActivityTitle._(
        left(
          ActivityTitleFailure(),
        ),
      );
    } else {
      return ActivityTitle._(right(input));
    }
  }

  @override
  final Either<ActivityTitleFailure, String> value;

  /// Max title char constraint
  static const int maxChar = 100;
  /// Min title char constraint
  static const int minChar = 10;
}