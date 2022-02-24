import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// Sealed class activity waiting participant failure
class ActivityDelayFailure extends Failure {}

/// Activity delay is gone failure
class ActivityDelayGoneFailure extends ActivityDelayFailure {}

/// Activity maximum participant failure
class ActivityMaximumParticipantFailure extends ActivityDelayFailure {}

/// Activity waiting participant
class ActivityDelay extends ValueObject<ActivityDelayFailure, int> {
  /// Constructor
  const ActivityDelay._(this.value);

  /// Factory constructor
  factory ActivityDelay({required int input, int? participantNumber}) {
    if (participantNumber != null &&
        input > participantNumber * dayMultiplier) {
      return ActivityDelay._(
        left(
          ActivityMaximumParticipantFailure(),
        ),
      );
    } else if (input > maxDays) {
      return ActivityDelay._(
        left(
          ActivityDelayGoneFailure(),
        ),
      );
    } else {
      return ActivityDelay._(right(input));
    }
  }

  @override
  final Either<ActivityDelayFailure, int> value;

  /// Multiplier of day amount by user
  static const int dayMultiplier = 7;

  /// Maximum delay until activity is hidden
  static const int maxDays = 31;
}
