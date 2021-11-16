import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

/// Extend this abstract class to create a validated value object class.
///
/// A value object is an object that contains attributes,
/// but has no conceptual identity.
///
/// ```dart
///class RequiredString extends ValueObject<String, String> {
///  final Either<String, String> value;
///
///  factory RequiredString(String input) {
///    assert(input != null);
///    if (input.isNotEmpty) {
///      return RequiredString._(right(input));
///    } else {
///      return RequiredString._(left('Value must not be empty'));
///    }
///  }
///
///  RequiredString._(this.value);
///}
/// ```
@immutable
abstract class ValueObject<F extends Failure, T> {
  /// Creates a [ValueObject]
  const ValueObject();

  /// The value of this [ValueObject]
  Either<F, T> get value;

  /// If this is valid, returns the value.
  /// Otherwise, throws [UnexpectedValueError].
  ///
  /// This should be used when you have already validated the value,
  /// and so you expect it to be valid.
  ///
  /// Do not use this for validation (for example, by wrapping in a `try`/`catch`).
  /// Instead, use the [value] field, or the [isValid] getter.
  T getOrCrash() {
    return value.fold(
        (F f) => throw UnexpectedValueError<F>(f), id);
  }

  /// If this is valid, returns the value. Otherwise, returns [dflt].
  T getOrElse(T dflt) {
    return value.getOrElse(() => dflt);
  }

  /// True if this is valid.
  bool get isValid => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<F, T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

/// Base failure object
@immutable
class Failure {
  /// Public constructor
  const Failure({this.message});

  /// Message of the failure
  final String? message;
}

/// Thrown when a [ValueObject] is expected to be valid, but is invalid.
@immutable
class UnexpectedValueError<F extends Failure> extends Error {

  /// Creates an [UnexpectedValueError]
  UnexpectedValueError(this.valueFailure);

  /// The failure from the [ValueObject].
  final F valueFailure;

  @override
  String toString() {
    const String explanation =
        'Encountered a failure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is UnexpectedValueError<Failure> && o.valueFailure == valueFailure;
  }

  @override
  int get hashCode => valueFailure.hashCode;
}
