import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// Location failure
class LocationFailure extends Failure {
  /// Public constructor
  const LocationFailure({required String message}) : super(message: message);
}

/// Location class
class Location {
  /// Constructor
  Location(
      {this.streetNumber,
      this.streetName,
      required this.zipCode,
      required this.city,
      required this.region,
      required this.country});

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
}

/// Location value object class
class StreetNumber extends ValueObject<LocationFailure, String> {
  const StreetNumber._(this.value);

  /// Factory constructor
  factory StreetNumber({required String input}) {
    if (input.isEmpty) {
      return StreetNumber._(
        left(
          const LocationFailure(message: ""),
        ),
      );
    } else {
      return StreetNumber._(right(input));
    }
  }

  @override
  final Either<LocationFailure, String> value;
}

/// Location value object class
class StreetName extends ValueObject<LocationFailure, String> {
  const StreetName._(this.value);

  /// Factory constructor
  factory StreetName({required String input}) {
    if (input.isEmpty) {
      return StreetName._(
        left(
          const LocationFailure(message: ""),
        ),
      );
    } else {
      return StreetName._(right(input));
    }
  }

  @override
  final Either<LocationFailure, String> value;
}

/// Location value object class
class ZipCode extends ValueObject<LocationFailure, String> {
  const ZipCode._(this.value);

  /// Factory constructor
  factory ZipCode({required String input}) {
    if (input.isEmpty) {
      return ZipCode._(
        left(
          const LocationFailure(message: ""),
        ),
      );
    } else {
      return ZipCode._(right(input));
    }
  }

  @override
  final Either<LocationFailure, String> value;
}

/// Location value object class
class City extends ValueObject<LocationFailure, String> {
  const City._(this.value);

  /// Factory constructor
  factory City({required String input}) {
    if (input.isEmpty) {
      return City._(
        left(
          const LocationFailure(message: ""),
        ),
      );
    } else {
      return City._(right(input));
    }
  }

  @override
  final Either<LocationFailure, String> value;
}

/// Location value object class
class Region extends ValueObject<LocationFailure, String> {
  const Region._(this.value);

  /// Factory constructor
  factory Region({required String input}) {
    if (input.isEmpty) {
      return Region._(
        left(
          const LocationFailure(message: ""),
        ),
      );
    } else {
      return Region._(right(input));
    }
  }

  @override
  final Either<LocationFailure, String> value;
}

/// Location value object class
class Country extends ValueObject<LocationFailure, String> {
  const Country._(this.value);

  /// Factory constructor
  factory Country({required String input}) {
    if (input.isEmpty) {
      return Country._(
        left(
          const LocationFailure(message: ""),
        ),
      );
    } else {
      return Country._(right(input));
    }
  }

  @override
  final Either<LocationFailure, String> value;
}
