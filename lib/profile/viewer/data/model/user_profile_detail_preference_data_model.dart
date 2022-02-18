import 'package:moony_app/profile/viewer/data/model/user_profile_raw_preference_data_model.dart';

/// Preference raw list
class UserProfileDetailPreferenceDataModel {

  /// Constructor
  UserProfileDetailPreferenceDataModel(this.items, this.message);

  /// list of raw items
  final List<UserProfileRawPreferenceDataModel> items;

  /// Moony message to display
  final String message;
}
