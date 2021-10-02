// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDataModel _$UserDataModelFromJson(Map<String, dynamic> json) {
  return UserDataModel(
    id: json['id'] as String,
    familyName: json['familyName'] as String,
    firstName: json['firstName'] as String,
    birthdate: DateTime.parse(json['birthdate'] as String),
    emailAddress: json['emailAddress'] as String,
    phoneNumber: json['phoneNumber'] as String,
    gender: json['gender'] as int,
    relationState: json['relationState'] as int,
    profilePhoto: json['profilePhoto'] as String,
    secondaryPhotos: (json['secondaryPhotos'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    verified: json['verified'] as bool,
    creationDate: json['creationDate'] == null
        ? null
        : DateTime.parse(json['creationDate'] as String),
    lastUpdateDate: json['lastUpdateDate'] == null
        ? null
        : DateTime.parse(json['lastUpdateDate'] as String),
    hobbies: (json['hobbies'] as List<dynamic>?)
        ?.map((e) => HobbyDataModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$UserDataModelToJson(UserDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'familyName': instance.familyName,
      'firstName': instance.firstName,
      'birthdate': instance.birthdate.toIso8601String(),
      'emailAddress': instance.emailAddress,
      'phoneNumber': instance.phoneNumber,
      'gender': instance.gender,
      'relationState': instance.relationState,
      'profilePhoto': instance.profilePhoto,
      'secondaryPhotos': instance.secondaryPhotos,
      'verified': instance.verified,
      'creationDate': instance.creationDate.toIso8601String(),
      'lastUpdateDate': instance.lastUpdateDate.toIso8601String(),
      'hobbies': instance.hobbies,
    };
