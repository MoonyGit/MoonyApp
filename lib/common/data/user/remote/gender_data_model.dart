import 'package:json_annotation/json_annotation.dart';
import 'package:moony_app/common/domain/user/model/gender.dart';

/// Gender info for a user
@JsonEnum()
enum GenderDataModel {
  /// Male
  male,
  /// Female
  female,
  /// Other
  other
}

/// Extension mapper domain to data
extension GenderDataMapper on Gender {
  /// Mapper method
  GenderDataModel toData() {
    switch(this) {
      case Gender.female: return GenderDataModel.female;
      case Gender.male: return GenderDataModel.male;
      default: return GenderDataModel.other;
    }
  }
}

/// Extension mapper data to domain
extension GenderMapper on GenderDataModel {
  /// Mapper method
  Gender toDomain() {
    switch(this) {
      case GenderDataModel.female: return Gender.female;
      case GenderDataModel.male: return Gender.male;
      default: return Gender.other;
    }
  }
}