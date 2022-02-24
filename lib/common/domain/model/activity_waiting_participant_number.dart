import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// Activity waiting participant failure
class ActivityWaitingParticipantFailure extends Failure {
  /// Public constructor
  const ActivityWaitingParticipantFailure({required String message})
      : super(message: message);
}

/// Activity waiting participant
class ActivityWaitingParticipant
    extends ValueObject<ActivityWaitingParticipantFailure, int> {
  /// Constructor
  const ActivityWaitingParticipant._(this.value);

  /// Factory constructor
  factory ActivityWaitingParticipant({required int input}) {
    if (input < minParticipant || input > maxParticipant) {
      return ActivityWaitingParticipant._(
        left(
          const ActivityWaitingParticipantFailure(message: ""),
        ),
      );
    } else {
      return ActivityWaitingParticipant._(right(input));
    }
  }

  @override
  final Either<ActivityWaitingParticipantFailure, int> value;

  /// Minimum for participant waiting
  static const int minParticipant = 0;
  /// Maximum for participant waiting
  static const int maxParticipant = 20;
}
