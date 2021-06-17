import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import 'errors.dart';

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
abstract class ValueObject<Failure, T> {
  /// Creates a [ValueObject]
  const ValueObject();

  /// The value of this [ValueObject]
  Either<Failure, T> get value;

  /// If this is valid, returns the value.
  /// Otherwise, throws [UnexpectedValueError].
  ///
  /// This should be used when you have already validated the value,
  /// and so you expect it to be valid.
  ///
  /// Do not use this for validation (for example, by wrapping in a `try`/`catch`).
  /// Instead, use the [value] field, or the [isValid] getter.
  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
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
    return o is ValueObject<Failure, T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
