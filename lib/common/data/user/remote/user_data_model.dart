import 'dart:core';

import 'package:json_annotation/json_annotation.dart';
import 'package:moony_app/common/data/activity/remote/activity_type.dart';
import 'package:moony_app/common/data/user/remote/gender_data_model.dart';
import 'package:moony_app/common/data/user/remote/relation_state_data_model.dart';
import 'package:moony_app/common/domain/activity/model/category.dart';
import 'package:moony_app/common/domain/user/model/birthdate.dart';
import 'package:moony_app/common/domain/user/model/email.dart';
import 'package:moony_app/common/domain/user/model/name.dart';
import 'package:moony_app/common/domain/user/model/phone_number.dart';
import 'package:moony_app/common/domain/user/model/user.dart';

part 'user_data_model.g.dart';

@JsonSerializable()

/// User remote data model
class UserDataModel {
  /// Constructor
  UserDataModel({
    required this.id,
    required this.familyName,
    required this.firstName,
    required this.birthdate,
    required this.emailAddress,
    required this.phoneNumber,
    required this.gender,
    required this.relationState,
    required this.profilePhoto,
    required this.secondaryPhotos,
    required this.verified,
    required this.creationDate,
    required this.lastUpdateDate,
    required this.hobbies,
  });

  /// Convert Object from json
  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);

  /// Convert object to json
  Map<String, dynamic> toJson() => _$UserDataModelToJson(this);

  /// User id
  final String id;

  /// User familyName
  final String familyName;

  /// User firstName
  final String firstName;

  /// User birthdate
  final DateTime birthdate;

  /// User emailAddress
  final String emailAddress;

  /// User phoneNumber
  final String phoneNumber;

  /// User gender
  final GenderDataModel gender;

  /// User relationState
  final RelationStateDataModel relationState;

  /// User profilePhoto
  final String profilePhoto;

  /// User secondaryPhotos
  final List<String> secondaryPhotos;

  /// User verified
  final bool verified;

  /// User creationDate
  final DateTime creationDate;

  /// User lastUpdateDate
  final DateTime lastUpdateDate;

  /// User hobbies
  final List<ActivityTypeData> hobbies;
}

/// Mapper extension to convert an UserDataModel into an User
extension UserDataSourceMapper on UserDataModel {
  /// Convert method
  User toEntity() {
    return User(
      id: id,
      familyName: Name(input: familyName),
      firstName: Name(input: firstName),
      birthdate: Birthdate(input: birthdate),
      phoneNumber: PhoneNumber(input: phoneNumber),
      emailAddress: EmailAddress(input: emailAddress),
      gender: gender.toDomain(),
      relationState: relationState.toDomain(),
      profilePhoto: Uri.parse(profilePhoto),
      secondaryPhotos:
      secondaryPhotos.map((String item) => Uri.parse(item)).toList(),
      verified: verified,
      creationDate: creationDate,
      lastUpdateDate: lastUpdateDate,
      hobbies: hobbies.map((ActivityTypeData item) => item.toDomain()).toList(),
    );
  }
}

/// Mapper extension to convert an User into an UserDataModel
extension UserMapper on User {
  /// Convert method
  UserDataModel toDataSource() {
    return UserDataModel(
      id: id,
      familyName: familyName.getOrCrash(),
      firstName: firstName.getOrCrash(),
      birthdate: birthdate.getOrCrash(),
      phoneNumber: phoneNumber.getOrCrash(),
      emailAddress: emailAddress.getOrCrash(),
      gender: gender.toData(),
      relationState: relationState.toData(),
      profilePhoto: profilePhoto.toString(),
      secondaryPhotos:
      secondaryPhotos.map((Uri item) => item.toString()).toList(),
      verified: verified,
      creationDate: creationDate,
      lastUpdateDate: lastUpdateDate,
      hobbies: hobbies.map((ActivityType item) => item.toData()).toList(),
    );
  }
}
