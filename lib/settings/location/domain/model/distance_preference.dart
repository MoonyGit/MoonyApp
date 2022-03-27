import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// Distance location failure
class DistancePreferenceFailure extends Failure {}

/// Distance preference.
class DistancePreference
    extends ValueObject<DistancePreferenceFailure, double> {
  /// Constructor
  const DistancePreference._(this.value);

  /// Factory constructor
  factory DistancePreference({required double input}) {
    if (input < minDistance || input > maxDistance) {
      return DistancePreference._(
        left(
          DistancePreferenceFailure(),
        ),
      );
    } else {
      return DistancePreference._(right(input));
    }
  }

  @override
  final Either<DistancePreferenceFailure, double> value;

  /// Minimum of distance for location
  static const double minDistance = 0;

  /// Maximum of distance for location
  static const double maxDistance = 100;
}