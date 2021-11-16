import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moony_app/common/domain/user/model/hobby.dart';

part 'hobby_data_model.g.dart';

@JsonSerializable()

/// Hobby data model
class HobbyDataModel {
  /// Constructor
  const HobbyDataModel(
      {required this.id, required this.title, required this.image,
        required this.expirationDate});

  /// Convert Object from json
  factory HobbyDataModel.fromJson(Map<String, dynamic> json) =>
      _$HobbyDataModelFromJson(json);

  /// Id of hobby
  final String id;

  /// Title of hobby
  final String title;

  /// Image url of hobby
  final String image;

  /// Image url of hobby
  final DateTime expirationDate;

  /// Convert object to json
  Map<String, dynamic> toJson() => _$HobbyDataModelToJson(this);
}

/// Mapper extension to convert an UserDataModel into an User
extension HobbyDataSourceMapper on HobbyDataModel {
  /// Convert method
  Hobby toEntity() {
    return Hobby(
        id: id,
        title: title,
        image: Uri.parse(image),
        expirationDate: expirationDate
    );
  }
}

/// Mapper extension to convert an HobbyDataModel into an Hobby
extension HobbyDataSourceMapperList on List<HobbyDataModel> {
  /// Convert method
  List<Hobby> toDomain() =>
      map((HobbyDataModel item) => item.toEntity()).toList();
}

/// Mapper extension to convert an User into an UserDataModel
extension HobbyMapper on Hobby {
  /// Convert method
  HobbyDataModel toDataSource() {
    return HobbyDataModel(id: id,
        title: title,
        image: image.toString(),
        expirationDate: expirationDate);
  }
}

/// Mapper extension to convert an User into an UserDataModel
extension HobbyMapperList on List<Hobby> {
  /// Convert method
  List<HobbyDataModel> toData() =>
      map((Hobby item) => item.toDataSource()).toList();
}