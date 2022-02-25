import 'package:get/get.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/domain/model/activity_waiting_participant_number.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/profile/activity/domain/model/user_profile_activity_entity.dart';
import 'package:moony_app/profile/activity/presentation/model/user_profile_activity_item_ui.dart';
import 'package:moony_app/profile/resources/strings.dart';
import 'package:moony_app/settings/resources/router.dart' as settingsRouter;
import 'package:moony_app/profile/resources/router.dart' as profileRouter;

/// user profile activity controller
class UserProfileActivityController extends GetxController {
  /// Constructor
  UserProfileActivityController(
      this._getUserProfileActivityUseCase,
      ) {
    _fetchUserAndActivityInformation();
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
  Future<void> _fetchUserAndActivityInformation() async {
    int number = 0;

    _getUserProfileActivityUseCase()
        .then((List<UserProfileActivityEntity> value) {
      comingActivities.value = value.map((UserProfileActivityEntity activity) {
        number++;
        return activity.toUi();
      }).toList();

      headerNumberActivity.value =
      "${userProfileActivityComing.translate()} ($number)";
    });
  }

  /// Redirect to the setting page
  void goToSetting() {
    Get.toNamed(settingsRouter.Router.setting);
  }

  /// Redirect to the user profile viewer page
  void goToUserProfileViewer() {
    Get.toNamed(profileRouter.Router.userProfileViewer);
  }
}

/// UserProfileActivityEntity mapper
extension UserProfileActivityEntityMapper on UserProfileActivityEntity {
  /// mapper domain to ui
  UserProfileActivityItemUi toUi() => UserProfileActivityItemUi(
    numberWaitingPartner: activityWaitingParticipant.getOrCrash(),
    maxWaitingPartner: ActivityWaitingParticipant.maxParticipant,
    location: location.city.getOrCrash(),
    delay: delayInDays.getOrCrash(),
    activityName: activityName.getOrCrash(),
      activityId : activityId
  );
}
