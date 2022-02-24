import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moony_app/common/data/model/location_data_model.dart';
import 'package:moony_app/activity_swipe/domain/model/swipe_creator_info.dart';
import 'package:moony_app/common/data/user/remote/gender_data_model.dart';
import 'package:moony_app/common/data/user/remote/hobby_data_model.dart';
import 'package:moony_app/common/domain/user/model/birthdate.dart';
import 'package:moony_app/common/domain/user/model/name.dart';

part 'swipe_creator_info_data_model.g.dart';

/// Activity creator info for swipe
@JsonSerializable()
class SwipeCreatorInfoDataModel {
  /// Constructor
  SwipeCreatorInfoDataModel(
      {required this.id,
        required this.name,
        required this.birthdate,
        required this.verified,
        required this.location,
        required this.imageList,
        required this.hobbyList,
        required this.gender
      });

  /// Convert Object from json
  factory SwipeCreatorInfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$SwipeCreatorInfoDataModelFromJson(json);

  /// Id of the creator
  final String id;

  /// User name
  final String name;

  /// User age
  final DateTime birthdate;

  /// User verified state
  final bool verified;

  /// User location
  final LocationDataModel location;

  /// Image uri
  final List<String> imageList;

  /// hobby list
  final List<HobbyDataModel> hobbyList;

  /// gender
  final GenderDataModel gender;
}

/// Activity creator info mapper
extension SwipeCreatorInfoMapper on SwipeCreatorInfoDataModel {
  /// Mapper method
  SwipeCreatorInfo toDomain() => SwipeCreatorInfo(
      id: id,
      verified: verified,
      location: location.toDomain(),
      hobbyList: hobbyList.toDomain(),
      gender: gender.toDomain(),
      birthdate: Birthdate(input: birthdate),
      imageList: imageList.map((String uri) => Uri.parse(uri)).toList(),
      name: Name(input: name));
}