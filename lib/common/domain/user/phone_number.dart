import 'package:dartz/dartz.dart';
import 'package:moony_app/authentication/resources/strings.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// Phone number failure
class PhoneNumberFailure extends Failure {
  /// Public constructor
  const PhoneNumberFailure({required String message}) : super(message: message);
}

/// Phone number value object
class PhoneNumber extends ValueObject<PhoneNumberFailure, String> {
  const PhoneNumber._(this.value);

  /// factory constructor
  factory PhoneNumber({required String? input}) {
    if (input == null || input.length < _phoneNumberSize) {
      return PhoneNumber._(left(const PhoneNumberFailure(
          message: phoneNumberBadSizeMessageFailure)));
    } else if (!_phoneNumberRegex.hasMatch(input)) {
      return PhoneNumber._(left(const PhoneNumberFailure(
          message: phoneNumberBadFormatMessageFailure)));
    } else {
      return PhoneNumber._(right(input));
    }
  }

  @override
  final Either<PhoneNumberFailure, String> value;

  static const int _phoneNumberSize = 10;
  static final RegExp _phoneNumberRegex = RegExp(r'(^\+(?:[0-9] ?){6,14}[0-9]$)');
}

/// Sms otp failure
class SmsOtpFailure extends Failure {
  /// Public constructor
  const SmsOtpFailure({required String message}) : super(message: message);
}

/// SmsOtp value object
class SmsOtp extends ValueObject<SmsOtpFailure, String> {
  const SmsOtp._(this.value);

  /// factory constructor
  factory SmsOtp({required String input}) {
    if (input.length != _otpSize) {
      return SmsOtp._(left(const SmsOtpFailure(
          message: phoneOtpBadSizeMessageFailure)));
    } else if (int.tryParse(input) == null) {
      return SmsOtp._(left(const SmsOtpFailure(
          message: phoneOtpBadFormatMessageFailure)));
    } else {
      return SmsOtp._(right(input));
    }
  }

  @override
  final Either<SmsOtpFailure, String> value;

  static const int _otpSize = 6;
}
