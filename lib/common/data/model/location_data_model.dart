import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/domain/model/location.dart';

part 'location_data_model.g.dart';

/// Location data model
@JsonSerializable()
class LocationDataModel {
  /// Constructor
  LocationDataModel(
      {this.streetNumber,
        this.streetName,
        required this.zipCode,
        required this.city,
        required this.region,
        required this.country});

  /// Convert Object from json
  factory LocationDataModel.fromJson(Map<String, dynamic> json) =>
      _$LocationDataModelFromJson(json);

  /// Convert object to json
  Map<String, dynamic> toJson() => _$LocationDataModelToJson(this);

  /// Street info
  final String? streetNumber;

  /// Street info
  final String? streetName;

  /// City info
  final String zipCode;

  /// City info
  final String city;

  /// Region info
  final String region;

  /// Country info
  final String country;
}

/// Location mapper to domain
extension LocationMapper on LocationDataModel {
  /// Mapper method
  Location toDomain() => Location(
      streetNumber: streetNumber?.let((String it) => StreetNumber(input: it)),
      streetName: streetName?.let((String it) => StreetName(input: it)),
      zipCode: ZipCode(input: zipCode),
      city: City(input: city),
      region: Region(input: region),
      country: Country(input: country));
}