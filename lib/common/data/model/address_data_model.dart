import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:moony_app/common/domain/model/address.dart';

part 'address_data_model.g.dart';

@JsonSerializable()
/// Location class
class AddressDataModel {
  /// Constructor
  AddressDataModel(
      {this.streetNumber,
      this.streetName,
      required this.zipCode,
      required this.city,
      required this.region,
      required this.country,
      });

  /// Street number
  final String? streetNumber;
  /// Street name
  final String? streetName;
  /// Zip code
  final String zipCode;
  /// City
  final String city;
  /// Region
  final String region;
  /// Country
  final String country;

  factory AddressDataModel.fromJson(Map<String, dynamic> json) =>
      _$AddressDataModelFromJson(json);

  /// Convert object to json
  Map<String, dynamic> toJson() => _$AddressDataModelToJson(this);
}

/// Mapper extension to convert an UserDataModel into an User
extension AddressDataSourceMapper on AddressDataModel {
  /// Convert method
  Address toEntity() {
    return Address(
      streetNumber: streetNumber as StreetNumber?,
      streetName: streetName as StreetName?,
      zipCode: zipCode as ZipCode,
      city: city as City,
      region: region as Region,
      country: country as Country,
    );
  }
}

/// Mapper extension
extension AdressMapper on Address{
  /// Mapper method
  AddressDataModel toData(){
    return AddressDataModel(
        zipCode: zipCode.getOrCrash(),
        city: city.getOrCrash(),
        region: region.getOrCrash(),
        country: country.getOrCrash(),
    );
  }
}

/// Location mapper to domain
extension AddressDataMapper on AddressDataModel {
  /// Mapper method
  Address toDomain() => Address(
      streetNumber: streetNumber?.let((String it) => StreetNumber(input: it)),
      streetName: streetName?.let((String it) => StreetName(input: it)),
      zipCode: ZipCode(input: zipCode),
      city: City(input: city),
      region: Region(input: region),
      country: Country(input: country));
}