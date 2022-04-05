import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// Address failure
class AddressFailure extends Failure {
  /// Public constructor
  const AddressFailure({required String message}) : super(message: message);
}

/// Address class
class Address {
  /// Constructor
  Address({
    this.streetNumber,
    this.streetName,
    required this.zipCode,
    required this.city,
    required this.region,
    required this.country,
  });

  /// Street number, required for activity but optional for user
  final StreetNumber? streetNumber;

  /// Street name, required for activity but optional for user
  final StreetName? streetName;

  /// zip code
  final ZipCode zipCode;

  /// city
  final City city;

  /// region
  final Region region;

  /// country
  final Country country;

  factory Address.defaultValue() => Address(
        zipCode: ZipCode(input: "75000"),
        city: City(input: "Paris"),
        region: Region(input: "Ile de France"),
        country: Country(input: "France"),
      );
}

/// Address value object class
class StreetNumber extends ValueObject<AddressFailure, String> {
  const StreetNumber._(this.value);

  /// Factory constructor
  factory StreetNumber({required String input}) {
    if (input.isEmpty) {
      return StreetNumber._(
        left(
          const AddressFailure(message: ""),
        ),
      );
    } else {
      return StreetNumber._(right(input));
    }
  }

  @override
  final Either<AddressFailure, String> value;
}

/// Address value object class
class StreetName extends ValueObject<AddressFailure, String> {
  const StreetName._(this.value);

  /// Factory constructor
  factory StreetName({required String input}) {
    if (input.isEmpty) {
      return StreetName._(
        left(
          const AddressFailure(message: ""),
        ),
      );
    } else {
      return StreetName._(right(input));
    }
  }

  @override
  final Either<AddressFailure, String> value;
}

/// Address value object class
class ZipCode extends ValueObject<AddressFailure, String> {
  const ZipCode._(this.value);

  /// Factory constructor
  factory ZipCode({required String input}) {
    if (input.isEmpty) {
      return ZipCode._(
        left(
          const AddressFailure(message: ""),
        ),
      );
    } else {
      return ZipCode._(right(input));
    }
  }

  @override
  final Either<AddressFailure, String> value;
}

/// Address value object class
class City extends ValueObject<AddressFailure, String> {
  const City._(this.value);

  /// Factory constructor
  factory City({required String input}) {
    if (input.isEmpty) {
      return City._(
        left(
          const AddressFailure(message: ""),
        ),
      );
    } else {
      return City._(right(input));
    }
  }

  @override
  final Either<AddressFailure, String> value;
}

/// Address value object class
class Region extends ValueObject<AddressFailure, String> {
  const Region._(this.value);

  /// Factory constructor
  factory Region({required String input}) {
    if (input.isEmpty) {
      return Region._(
        left(
          const AddressFailure(message: ""),
        ),
      );
    } else {
      return Region._(right(input));
    }
  }

  @override
  final Either<AddressFailure, String> value;
}

/// Address value object class
class Country extends ValueObject<AddressFailure, String> {
  const Country._(this.value);

  /// Factory constructor
  factory Country({required String input}) {
    if (input.isEmpty) {
      return Country._(
        left(
          const AddressFailure(message: ""),
        ),
      );
    } else {
      return Country._(right(input));
    }
  }

  @override
  final Either<AddressFailure, String> value;
}
