import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// Activity name failure
class ActivityNameFailure extends Failure {}

/// Activity name
class ActivityName extends ValueObject<ActivityNameFailure, String> {
  /// Constructor
  const ActivityName._(this.value);

  /// Factory constructor
  factory ActivityName({required String input}) {
    if (input.isEmpty || input.length > maxActivityName) {
      return ActivityName._(
        left(
          ActivityNameFailure(),
        ),
      );
    } else {
      return ActivityName._(right(input));
    }
  }

  @override
  final Either<ActivityNameFailure, String> value;

  /// Maximum of character for the activity name
  static const int maxActivityName = 50;
}
