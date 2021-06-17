import 'package:meta/meta.dart';

import 'value_object.dart';

/// Thrown when a [ValueObject] is expected to be valid, but is invalid.
@immutable
class UnexpectedValueError<Failure> extends Error {
  /// The failure from the [ValueObject].
  final Failure valueFailure;

  /// Creates an [UnexpectedValueError]
  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
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