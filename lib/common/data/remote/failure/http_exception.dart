/// Class http failure
class HttpFailure {
  /// Constructor
  HttpFailure({required this.errorCode, this.message});
  final int errorCode;
  final String? message;
}