import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moony_app/common/domain/user/hobby.dart';

part 'hobby_data_model.g.dart';

@JsonSerializable()
/// Hobby data model
class HobbyDataModel {
  /// Constructor
  const HobbyDataModel(
      {required this.id, required this.title, required this.imageUrl});
  /// Convert Object from json
  factory HobbyDataModel.fromJson(Map<String, dynamic> json) =>
      _$HobbyDataModelFromJson(json);

  /// Id of hobby
  final int id;

  /// Title of hobby
  final String title;

  /// Image url of hobby
  final String imageUrl;

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
      image: Uri.parse(imageUrl),
    );
  }
}

/// Mapper extension to convert an User into an UserDataModel
extension HobbyMapper on Hobby {
  /// Convert method
  HobbyDataModel toDataSource() {
    return HobbyDataModel(id: id, title: title, imageUrl: image.toString());
  }
}
