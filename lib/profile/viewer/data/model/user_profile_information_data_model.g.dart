// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_information_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileInformationDataModel _$UserProfileInformationDataModelFromJson(
        Map<String, dynamic> json) =>
    UserProfileInformationDataModel(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      age: json['age'] as String,
      pictures: json['pictures'] as String,
      gender: json['gender'] as String,
      sexualOrientation: json['sexualOrientation'] as String,
      relationState:
          $enumDecode(_$RelationStateDataModelEnumMap, json['relationState']),
      spokenLanguage: json['spokenLanguage'] as String,
      location: json['location'] as String,
      description: json['description'] as String,
      froonysNumber: json['froonysNumber'] as int,
      activityNumber: json['activityNumber'] as int,
    );

Map<String, dynamic> _$UserProfileInformationDataModelToJson(
        UserProfileInformationDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'age': instance.age,
      'pictures': instance.pictures,
      'gender': instance.gender,
      'sexualOrientation': instance.sexualOrientation,
      'relationState': _$RelationStateDataModelEnumMap[instance.relationState],
      'spokenLanguage': instance.spokenLanguage,
      'location': instance.location,
      'description': instance.description,
      'froonysNumber': instance.froonysNumber,
      'activityNumber': instance.activityNumber,
    };

const _$RelationStateDataModelEnumMap = {
  RelationStateDataModel.taken: 'taken',
  RelationStateDataModel.alone: 'alone',
  RelationStateDataModel.other: 'other',
};
