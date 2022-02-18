import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_ui_item.freezed.dart';

/// sealed class user holder viewer ui
@freezed
class UserProfileUi with _$UserProfileUi {
  /// Header for user profile category
  const factory UserProfileUi.header({required String title}) =
  UserProfileHeader;

  /// Item for user profile category
  const factory UserProfileUi.item({
    required String title,
    required String icon,
  }) = UserProfileItem;

  /// Description of user in profile
  const factory UserProfileUi.description({required String content}) =
  UserProfileDescription;
}
