import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/value_object.dart';
import 'package:moony_app/common/resources/strings.dart';

/// Email failure
class EmailAddressFailure {
  /// Public constructor
  const EmailAddressFailure({required this.message});

  /// Message of the failure
  final String message;
}

/// Email value object class
class EmailAddress extends ValueObject<EmailAddressFailure, String> {
  const EmailAddress._(this.value);

  /// Factory constructor
  factory EmailAddress({required String input}) {
    if (!RegExp(_emailRequiredPattern).hasMatch(input)) {
      return EmailAddress._(
        left(
          const EmailAddressFailure(
              message: AppStrings.emailBadFormatMessageFailure),
        ),
      );
    } else {
      return EmailAddress._(right(input));
    }
  }

  @override
  final Either<EmailAddressFailure, String> value;

  static const String _emailRequiredPattern =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
}
