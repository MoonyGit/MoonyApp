import 'package:get/get.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/profile/activity/domain/model/user_profile_activity_entity.dart';
import 'package:moony_app/profile/activity/presentation/model/user_profile_activity_item_ui.dart';
import 'package:moony_app/profile/resources/router.dart';
import 'package:moony_app/profile/resources/strings.dart';

/// user profile activity controller
class UserProfileActivityController extends GetxController {
  /// Constructor
  UserProfileActivityController(
      this._getUserProfileActivityUseCase,
      ) {
    fetchUserAndActivityInformation();
  }

  /// Get user profile information
  final AsyncUseCase<List<UserProfileActivityEntity>>
  _getUserProfileActivityUseCase;

  /// user profile number of activity to coming up header
  late Rxn<String> headerNumberActivity = Rxn<String>();

  /// Category for the user profile
  late Rxn<List<UserProfileActivityItemUi>> comingActivities =
  Rxn<List<UserProfileActivityItemUi>>();

  /// Retrieve the user information and all coming activity
  Future<void> fetchUserAndActivityInformation() async {
    int number = 0;

    _getUserProfileActivityUseCase()
        .then((List<UserProfileActivityEntity> value) {
      comingActivities.value = value.map((UserProfileActivityEntity activity) {
        number++;
        return UserProfileActivityItemUi(
          numberWaitingPartner: activity.numberWaitingPartner,
          maxWaitingPartner: activity.maxWaitingPartner,
          location: activity.location,
          delay: activity.delay,
          activityName: activity.activityName,
        );
      }).toList();

      headerNumberActivity.value =
      "${userProfileActivityComing.translate()} ($number)";
    });
  }

  /// Redirect to the setting page
  void goToSetting() {
    Get.toNamed(Router.userProfileViewer);
  }
}
