import 'package:json_serializable/builder.dart';
import 'package:moony_app/common/domain/location/address.dart';

part 'address_data_model.g.dart';

@jsonSerializable()
/// Location class
class AddressDataModel {
  /// Constructor
  AddressDataModel(
      {this.streetNumber,
      this.streetName,
      required this.zipCode,
      required this.city,
      required this.region,
      required this.country});

  final String? streetNumber;
  final String? streetName;
  final String zipCode;
  final String city;
  final String region;
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

extension AdressMapper on Address{
  AddressDataModel toData(){
    return AddressDataModel(
        zipCode: zipCode.getOrCrash(),
        city: city.getOrCrash(),
        region: region.getOrCrash(),
        country: country.getOrCrash(),
    );
  }
}
