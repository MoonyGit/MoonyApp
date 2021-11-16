// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swipe_location_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationDataModel _$LocationDataModelFromJson(Map<String, dynamic> json) =>
    LocationDataModel(
      streetNumber: json['streetNumber'] as String?,
      streetName: json['streetName'] as String?,
      zipCode: json['zipCode'] as String,
      city: json['city'] as String,
      region: json['region'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$LocationDataModelToJson(LocationDataModel instance) =>
    <String, dynamic>{
      'streetNumber': instance.streetNumber,
      'streetName': instance.streetName,
      'zipCode': instance.zipCode,
      'city': instance.city,
      'region': instance.region,
      'country': instance.country,
    };
