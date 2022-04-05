import 'package:moony_app/common/base/domain/model/value_object.dart';

/// Activity creation Failure
class CreatingActivityFailure extends Failure {
  /// Constructor
  const CreatingActivityFailure({String? message}) : super(message: message);

  /// Error code
  static const int errorCode = 40;
}

/// Bad keyword detected Failure
class CreatingActivityBadKeywordFailure extends CreatingActivityFailure {
  /// Constructor
  const CreatingActivityBadKeywordFailure({String? message})
      : super(message: message);

  /// Error code
  static const int errorCode = 42;
}
