import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/value_object.dart';
import 'package:moony_app/common/resources/strings.dart';

/// Phone number failure
class PhoneNumberFailure {
  /// Public constructor
  const PhoneNumberFailure({required this.message});

  /// Message of the failure
  final String message;
}

/// Phone number value object
class PhoneNumber extends ValueObject<PhoneNumberFailure, String> {
  const PhoneNumber._(this.value);

  /// factory constructor
  factory PhoneNumber({required String? input}) {
    if (input == null || input.length < _phoneNumberSize) {
      return PhoneNumber._(left(const PhoneNumberFailure(
          message: AppStrings.phoneNumberBadSizeMessageFailure)));
    } else if (!_phoneNumberRegex.hasMatch(input)) {
      return PhoneNumber._(left(const PhoneNumberFailure(
          message: AppStrings.phoneNumberBadFormatMessageFailure)));
    } else {
      return PhoneNumber._(right(input));
    }
  }

  @override
  final Either<PhoneNumberFailure, String> value;

  static const int _phoneNumberSize = 10;
  static final RegExp _phoneNumberRegex = RegExp(r'(^\+(?:[0-9] ?){6,14}[0-9]$)');
}

/// SmsOtp value object
class SmsOtp extends ValueObject<PhoneNumberFailure, String> {
  const SmsOtp._(this.value);

  /// factory constructor
  factory SmsOtp({required String input}) {
    if (input.length != _phoneNumberSize) {
      return SmsOtp._(left(const PhoneNumberFailure(
          message: AppStrings.phoneOtpBadSizeMessageFailure)));
    } else if (int.tryParse(input) == null) {
      return SmsOtp._(left(const PhoneNumberFailure(
          message: AppStrings.phoneOtpBadFormatMessageFailure)));
    } else {
      return SmsOtp._(right(input));
    }
  }

  @override
  final Either<PhoneNumberFailure, String> value;

  static const int _phoneNumberSize = 6;
}
