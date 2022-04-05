import 'package:moony_app/activity_creation/data/remote/model/activity_participant_filter.dart';
import 'package:moony_app/common/data/activity/remote/activity_type.dart';
import 'package:moony_app/common/data/activity/remote/budget_data_model.dart';
import 'package:moony_app/common/data/model/address_data_model.dart';

/// Local source
abstract class IActivityCreationLocalSource {
  Future<String?> getActivityTitle();

  Future<void> setActivityTitle({required String title});

  Future<String?> getActivityDesc();

  Future<void> setActivityDesc({required String desc});

  Future<BudgetDataModel?> getActivityBudget();

  Future<void> setActivityBudget({required BudgetDataModel budget});

  Future<String?> getActivityImage();

  Future<void> setActivityImage({required String image});

  Future<String?> getActivityLinkRef();

  Future<void> setActivityLinkRef({required String link});

  Future<ActivityTypeData?> getActivityCategory();

  Future<void> setActivityCategory({required ActivityTypeData category});

  Future<AddressDataModel?> getActivityLocation();

  Future<void> setActivityLocation({required AddressDataModel location});

  Future<DateTime?> getActivityStartingDate();

  Future<void> setActivityStartingDate({required DateTime date});

  Future<int?> getActivityParticipantNumber();

  Future<void> setActivityParticipantNumber({required int number});

  Future<Set<ParticipantAttributeData>?> getActivityParticipantFilter();

  Future<void> setActivityParticipantFilter(
      {required Set<ParticipantAttributeData> filters});
}
