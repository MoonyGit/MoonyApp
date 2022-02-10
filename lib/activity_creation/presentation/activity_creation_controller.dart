import 'package:flutter/material.dart' hide Router;
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:intl/intl.dart';
import 'package:moony_app/activity_creation/resources/router.dart';
import 'package:moony_app/activity_creation/resources/strings.dart';
import 'package:moony_app/common/resources/strings.dart';

/// Class to define LoginPage dependencies by dependency injection
class ActivityCreationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ActivityCreationController());
  }
}

/// Class to define LoginPage dependencies by dependency injection
class ActivityDescriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ActivityCreationController());
  }
}

/// The login viewModel of login page
class ActivityCreationController extends GetxController {
  final PageController pageController = PageController();

  TextEditingController dateController = TextEditingController();
  late DateTime currentDate;
  late DateTime maxActivityDate;
  DateTime? selectedDate;
  int pageIndex = 0;
  int pageCount = 4; // Number of pages into PageIndicator
  String? selectedActivity;
  String? selectedBudget;
  String? selectedParticipantsNumber;
  Set<String>? selectedParticipantType;

  String? imageUrl;
  String? title;
  DateTime? date;
  String? location;
  String? description;

  Duration duration = const Duration(milliseconds: 300);
  RxnString imagePath = RxnString();

  /*int participantNumberToInt(){
    int participantNumber = selectedParticipantsNumber.replaceAll("+", "") as Int;
  }*/

  bool isDescriptionOK() {
    if (imageUrl != null &&
        title != null &&
        date != null &&
        location != null &&
        description != null) {
      return true;
    }
    return false;
  }

  void selectedDateString() {
    String currentDateString = "";
    if (selectedDate != null) {
      currentDateString =
          DateFormat('dd/MM/yyyy - hh:mm').format(selectedDate!);
      currentDateString = selectedDate.toString();
    }
    dateController.text = currentDateString;
  }

  /// List containing chips names
  /// Page 0 : Type of the activity_creation
  final Set<String> activityTypeList = {
    activityTypeTravel,
    activityTypeSport,
    activityTypeFood,
    activityTypeCulture,
  };

  /// Page 1 : Number of guest allowed to join the activity_creation
  final Set<String> activityGuestNumberList = {
    activityNumber1,
    activityNumber2,
    activityNumber3,
  };

  /// Page 2 : List of filter to allow only some people depending to their way of life
  final Set<String> activityParticipantTypeList = {
    AppStrings.genderMan,
    AppStrings.genderWoman,
    AppStrings.relationshipSingle,
    AppStrings.relationshipCouple,
    AppStrings.hetero,
    AppStrings.homosexual
  };

  /// Page 3 : Cost of the activity_creation
  final Set<String> activityBudgetList = {
    activityBudgetFree,
    activityBudgetLv1,
    activityBudgetLv2,
    activityBudgetLv3,
  };

  void refreshLimitDates() {
    currentDate = DateTime.now();
    maxActivityDate = DateTime.now().add(Duration(days: 15));
  }

  bool checkPageData(int i) {
    switch (i) {
      case 0:
        if (selectedActivity != null) {
          return true;
        }
        break;
      case 1:
        if (selectedParticipantsNumber != null) {
          //Logger.i(selectedGuestNumber);
          return true;
        }

        break;
      case 2:
        if (selectedParticipantType != null) {
          if (selectedParticipantType!.isNotEmpty) {
            return true;
          }
        }
        break;
      case 3:
        if (selectedBudget != null) return true;
        break;
    }
    return false;
  }

  void setChoosenImage(String item) {
    imagePath.value = item;
  }

  /// Manage the state of the "Next" Button
  bool isChipSelected() {
    if (checkPageData(pageIndex)) {
      return true;
    }
    return true;
  }

  void exitCreation() {
    Get.back();
  }

  /// Return to the previous page if possible
  void previousPage() {
    if (pageIndex > 0) {
      pageController.animateToPage(
        --pageIndex,
        duration: duration,
        curve: Curves.linear,
      );
      //Logger.d("Page index : " + pageIndex.toString()); //d e i
    }
    else if (pageIndex == 0) {
      Get.back();
    }
  }

  /// Go to the next page if available
  void nextPage() {
    //if (checkPageData(pageController.page!.toInt()))
    if (checkPageData(pageIndex) && pageIndex < pageCount) {
      if (pageIndex >= pageCount - 1) {
        Get.toNamed(Router.activityDescription);
      } else {
        pageController.animateToPage(++pageIndex,
            duration: duration, curve: Curves.linear);
      }
      //Logger.d("Page index : " + pageIndex.toString()); //d e i
    }
  }
}
