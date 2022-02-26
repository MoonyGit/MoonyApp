import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// Participant number failure
class ParticipantNumberFailure extends Failure {}

/// Name value object class
class ParticipantNumber extends ValueObject<ParticipantNumberFailure, int> {
  const ParticipantNumber._(this.value);

  /// Factory constructor
  factory ParticipantNumber({required int input}) {
    if (input < minParticipantNumber || input > maxParticipantNumber) {
      return ParticipantNumber._(
        left(
          ParticipantNumberFailure(),
        ),
      );
    } else {
      return ParticipantNumber._(right(input));
    }
  }

  @override
  final Either<ParticipantNumberFailure, int> value;

  /// min participants
  static const int minParticipantNumber = 1;

  /// max participants
  static const int maxParticipantNumber = 4;

  /// Get participants number choices as List
  static Set<int> getParticipantNumberChoices() => <int>{
        for (int i = minParticipantNumber; i < maxParticipantNumber + 1; i += 1)
          i
      };
}
