import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// Activity Starting Date failure
abstract class ExpectedStartingDateFailure extends Failure {}

/// Specific failure before today
class ExpectedStartingDateBeforeTodayFailure
    extends ExpectedStartingDateFailure {}

/// Specific failure too late
class ActivityStartingDateTooLateFailure extends ExpectedStartingDateFailure {}

/// Activity expected starting date
class ExpectedStartingDate
    extends ValueObject<ExpectedStartingDateFailure, DateTime> {
  const ExpectedStartingDate._(this.value);

  /// Factory constructor
  factory ExpectedStartingDate({required DateTime input}) {
    if (input.isBefore(minDate)) {
      return ExpectedStartingDate._(
        left(
          ExpectedStartingDateBeforeTodayFailure(),
        ),
      );
    } else if (input.isAfter(maxDate)) {
      return ExpectedStartingDate._(
        left(
          ActivityStartingDateTooLateFailure(),
        ),
      );
    } else {
      return ExpectedStartingDate._(right(input));
    }
  }

  @override
  final Either<ExpectedStartingDateFailure, DateTime> value;

  /// Min date is now + 2hours
  static final DateTime minDate = DateTime.now().add(const Duration(hours: 2));
  /// Max date is 2 months later
  static final DateTime maxDate = minDate.add(const Duration(days: 60));
}