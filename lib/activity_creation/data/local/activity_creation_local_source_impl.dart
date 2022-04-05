import 'package:moony_app/activity_creation/data/local/activity_creation_local_source.dart';
import 'package:moony_app/activity_creation/data/remote/model/activity_participant_filter.dart';
import 'package:moony_app/common/data/activity/remote/activity_type.dart';
import 'package:moony_app/common/data/activity/remote/budget_data_model.dart';
import 'package:moony_app/common/data/model/address_data_model.dart';

/// Local source
class ActivityCreationLocalSourceImpl implements IActivityCreationLocalSource {
  String? _title;
  String? _desc;
  BudgetDataModel? _budget;
  ActivityTypeData? _category;
  AddressDataModel? _location;
  DateTime? _startingDate;
  String? _image;
  String? _link;
  int? _participantNumber;
  Set<ParticipantAttributeData>? _filters;

  @override
  Future<BudgetDataModel?> getActivityBudget() =>
      Future<BudgetDataModel?>.value(_budget);

  @override
  Future<ActivityTypeData?> getActivityCategory() =>
      Future<ActivityTypeData?>.value(_category);

  @override
  Future<String?> getActivityDesc() => Future<String?>.value(_desc);

  @override
  Future<String?> getActivityImage() => Future<String?>.value(_image);

  @override
  Future<String?> getActivityLinkRef() => Future<String?>.value(_link);

  @override
  Future<AddressDataModel?> getActivityLocation() =>
      Future<AddressDataModel?>.value(_location);

  @override
  Future<Set<ParticipantAttributeData>?> getActivityParticipantFilter() =>
      Future<Set<ParticipantAttributeData>?>.value(_filters);

  @override
  Future<int?> getActivityParticipantNumber() =>
      Future<int?>.value(_participantNumber);

  @override
  Future<String?> getActivityTitle() => Future<String?>.value(_title);

  @override
  Future<void> setActivityBudget({required BudgetDataModel budget}) async {
    _budget = _budget;
  }

  @override
  Future<void> setActivityCategory({required ActivityTypeData category}) async {
    _category = _category;
  }

  @override
  Future<void> setActivityDesc({required String desc}) async {
    _desc = _desc;
  }

  @override
  Future<void> setActivityImage({required String image}) async {
    _image = image;
  }

  @override
  Future<void> setActivityLinkRef({required String link}) async {
    _link = link;
  }

  @override
  Future<void> setActivityLocation({required AddressDataModel location}) async {
    _location = location;
  }

  @override
  Future<void> setActivityParticipantFilter(
      {required Set<ParticipantAttributeData> filters,}) async {
    _filters = filters;
  }

  @override
  Future<void> setActivityParticipantNumber({required int number}) async {
    _participantNumber = number;
  }

  @override
  Future<void> setActivityTitle({required String title}) async {
    _title = title;
  }

  @override
  Future<DateTime?> getActivityStartingDate() =>
      Future<DateTime?>.value(_startingDate);

  @override
  Future<void> setActivityStartingDate({required DateTime date}) async {
    _startingDate = date;
  }
}
