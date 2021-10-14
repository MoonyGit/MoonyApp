import 'package:freezed_annotation/freezed_annotation.dart';

/// Gender enum
part 'gender.freezed.dart';

@freezed
/// Gender object
class Gender with _$Gender {
  /// Man
  const factory Gender.male([@Default(Gender.maleId) int? id]) = Male;

  /// Woman
  const factory Gender.female([@Default(Gender.femaleId) int? id]) = Female;

  /// Undefined
  const factory Gender.other([@Default(Gender.otherId) int? id]) = Other;

  /// Get Gender from id
  static Gender fromId({required int id}) {
    switch(id) {
      case maleId: return const Male();
      case femaleId: return const Female();
      case otherId: return const Other();
      default: return const Other();
    }
  }
  /// Gender male id
  static const int maleId = 0;
  /// Gender female id
  static const int femaleId = 1;
  /// Gender other id
  static const int otherId = 2;
  /// Gender default id
  static const int defaultId = otherId;
}