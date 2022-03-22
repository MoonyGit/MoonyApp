// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swipe_creator_info_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SwipeCreatorInfoDataModel _$SwipeCreatorInfoDataModelFromJson(
        Map<String, dynamic> json) =>
    SwipeCreatorInfoDataModel(
      id: json['id'] as String,
      name: json['name'] as String,
      birthdate: DateTime.parse(json['birthdate'] as String),
      verified: json['verified'] as bool,
      location:
          AddressDataModel.fromJson(json['location'] as Map<String, dynamic>),
      imageList:
          (json['imageList'] as List<dynamic>).map((e) => e as String).toList(),
      hobbyList: (json['hobbyList'] as List<dynamic>)
          .map((e) => ActivityTypeData.fromJson(e as Map<String, dynamic>))
          .toSet(),
      gender: $enumDecode(_$GenderDataModelEnumMap, json['gender']),
    );

Map<String, dynamic> _$SwipeCreatorInfoDataModelToJson(
        SwipeCreatorInfoDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'birthdate': instance.birthdate.toIso8601String(),
      'verified': instance.verified,
      'location': instance.location,
      'imageList': instance.imageList,
      'hobbyList': instance.hobbyList.toList(),
      'gender': _$GenderDataModelEnumMap[instance.gender],
    };

const _$GenderDataModelEnumMap = {
  GenderDataModel.male: 'male',
  GenderDataModel.female: 'female',
  GenderDataModel.other: 'other',
};
