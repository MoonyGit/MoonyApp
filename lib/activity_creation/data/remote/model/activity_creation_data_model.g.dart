// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_creation_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivityCreationDataModel _$ActivityCreationDataModelFromJson(
        Map<String, dynamic> json) =>
    ActivityCreationDataModel(
      creatorId: json['creatorId'] as String,
      imageUri: json['imageUri'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      expectedStartingDate: json['expectedStartingDate'] == null
          ? null
          : DateTime.parse(json['expectedStartingDate'] as String),
      linkReference: json['linkReference'] as String?,
      category:
          ActivityTypeData.fromJson(json['category'] as Map<String, dynamic>),
      location:
          AddressDataModel.fromJson(json['location'] as Map<String, dynamic>),
      budget: BudgetDataModel.fromJson(json['budget'] as Map<String, dynamic>),
      participantNumber: json['participantNumber'] as int,
      filterParticipant: (json['filterParticipant'] as List<dynamic>)
          .map((e) => $enumDecode(_$ParticipantAttributeDataEnumMap, e))
          .toSet(),
    );

Map<String, dynamic> _$ActivityCreationDataModelToJson(
        ActivityCreationDataModel instance) =>
    <String, dynamic>{
      'creatorId': instance.creatorId,
      'imageUri': instance.imageUri,
      'title': instance.title,
      'description': instance.description,
      'expectedStartingDate': instance.expectedStartingDate?.toIso8601String(),
      'linkReference': instance.linkReference,
      'category': instance.category,
      'location': instance.location,
      'budget': instance.budget,
      'participantNumber': instance.participantNumber,
      'filterParticipant': instance.filterParticipant
          .map((e) => _$ParticipantAttributeDataEnumMap[e])
          .toList(),
    };

const _$ParticipantAttributeDataEnumMap = {
  ParticipantAttributeData.female: 'female',
  ParticipantAttributeData.male: 'male',
  ParticipantAttributeData.single: 'single',
  ParticipantAttributeData.couple: 'couple',
  ParticipantAttributeData.hetero: 'hetero',
  ParticipantAttributeData.homo: 'homo',
};
