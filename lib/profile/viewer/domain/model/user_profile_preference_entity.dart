import 'package:moony_app/common/base/domain/model/entity.dart';

/// Data class to send to controller which represent
/// the preference with user state over the raw list
class UserProfilePreferenceEntity extends Entity<String> {
 /// Default constructor
 UserProfilePreferenceEntity(
     {required this.id, required this.title, required this.isSelected});

 @override
 final String id;

 /// title of preference
 final String title;

 /// selected state of preference
 final bool isSelected;
}
