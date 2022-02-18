import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_edit_ui_item.freezed.dart';

/// sealed class for category user profile
@freezed
class UserProfileEditUi with _$UserProfileEditUi {
  /// Header for user profile category
  const factory UserProfileEditUi.header({required String title}) =
  UserProfileEditHeader;

  /// Description of user in profile
  const factory UserProfileEditUi.item({required String content, required String value}) =
  UserProfileEditItem;
}
