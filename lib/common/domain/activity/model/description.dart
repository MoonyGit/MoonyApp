import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// Activity description failure
class ActivityDescriptionFailure extends Failure {}

/// Activity description value object class
class ActivityDescription
    extends ValueObject<ActivityDescriptionFailure, String> {
  const ActivityDescription._(this.value);

  /// Factory constructor
  factory ActivityDescription({required String input}) {
    if (input.length > maxChar && input.length < minChar) {
      return ActivityDescription._(
        left(
          ActivityDescriptionFailure(),
        ),
      );
    } else {
      return ActivityDescription._(right(input));
    }
  }

  @override
  final Either<ActivityDescriptionFailure, String> value;

  /// Max char
  static const int maxChar = 300;
  /// Min char
  static const int minChar = 30;
}
