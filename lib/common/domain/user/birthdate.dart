import 'package:dartz/dartz.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/base/domain/value_object.dart';
import 'package:moony_app/features/registration/resources/strings.dart';

/// Birthdate failure
class BirthdateFailure extends Failure {
  /// Public constructor
  const BirthdateFailure({required String message}) : super(message: message);
}

/// Name value object class
class Birthdate extends ValueObject<BirthdateFailure, DateTime> {
  const Birthdate._(this.value);

  /// Factory constructor
  factory Birthdate({required DateTime input}) {
    if (input.isAfter(minSecurityDate())) {
      return Birthdate._(
        left(
          const BirthdateFailure(message: birthdateBadAgeMessageFailure),
        ),
      );
    } else {
      return Birthdate._(right(input));
    }
  }

  @override
  final Either<BirthdateFailure, DateTime> value;

  /// min age for legal
  static const int minAgeOffset = 18;
  /// min age for legal as date format
  static DateTime minSecurityDate() => DateTime.now().let(
  (DateTime now) => DateTime(now.year - minAgeOffset, now.month, now.day));

  /// max age for legal
  static const int maxAgeOffset = 120;
  /// max age for legal as date format
  static DateTime maxSecurityDate() => DateTime.now().let(
  (DateTime now) => DateTime(now.year - maxAgeOffset, now.month, now.day));
}
