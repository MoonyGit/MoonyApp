import 'package:moony_app/common/base/domain/model/value_object.dart';

/// Activity creation Failure
class CreatingActivityFailure extends Failure {
  CreatingActivityFailure({String? message}) : super(message: message);
  static const int errorCode = 40;
}

/// Bad keyword detected Failure
class CreatingActivityBadKeywordFailure extends CreatingActivityFailure {
  CreatingActivityBadKeywordFailure({String? message}) : super(message: message);
  static const int errorCode = 42;
}
