import 'package:moony_app/activity_creation/data/local/activity_creation_local_source.dart';
import 'package:moony_app/activity_creation/data/remote/model/activity_participant_filter.dart';
import 'package:moony_app/common/data/activity/remote/activity_type.dart';
import 'package:moony_app/common/data/activity/remote/budget_data_model.dart';
import 'package:moony_app/common/data/model/address_data_model.dart';
import 'package:moony_app/common/data/services/local_storage/local_storage.dart';

/// Local source
class ActivityCreationLocalSourceImpl implements IActivityCreationLocalSource {
  /// Constructor
  ActivityCreationLocalSourceImpl(this._storage);

  final ILocalStorage _storage;

  /// Activity creation storage container
  static const String activityCreation = "activity_creation";
  static const String _separator = "_";

  static const String _titlKey = "_titlKey";
  static const String _descKey = "_desc";
  static const String _budgetKey = "_budget";
  static const String _categoryKey = "_category";
  static const String _locationKey = "_location";
  static const String _startingDateKey = "_startingDate";
  static const String _imageKey = "_image";
  static const String _linkKey = "_link";
  static const String _participantNumberKey = "_participantNumber";
  static const String _filtersKey = "_filters";

  @override
  Future<BudgetDataModel?> getActivityBudget() =>
      Future<BudgetDataModel?>.value(_storage
          .get<BudgetDataModel>(activityCreation + _separator + _budgetKey));

  @override
  Future<ActivityTypeData?> getActivityCategory() =>
      Future<ActivityTypeData?>.value(_storage
          .get<ActivityTypeData>(activityCreation + _separator + _categoryKey));

  @override
  Future<String?> getActivityDesc() => Future<String?>.value(
      _storage.get<String>(activityCreation + _separator + _descKey));

  @override
  Future<String?> getActivityImage() => Future<String?>.value(
      _storage.get<String>(activityCreation + _separator + _imageKey));

  @override
  Future<String?> getActivityLinkRef() => Future<String?>.value(
      _storage.get<String>(activityCreation + _separator + _linkKey));

  @override
  Future<AddressDataModel?> getActivityLocation() =>
      Future<AddressDataModel?>.value(_storage
          .get<AddressDataModel>(activityCreation + _separator + _locationKey));

  @override
  Future<Set<ParticipantAttributeData>?> getActivityParticipantFilter() =>
      Future<Set<ParticipantAttributeData>?>.value(
          _storage.get<Set<ParticipantAttributeData>>(
              activityCreation + _separator + _filtersKey));

  @override
  Future<int?> getActivityParticipantNumber() => Future<int?>.value(
      _storage.get<int>(activityCreation + _separator + _participantNumberKey));

  @override
  Future<String?> getActivityTitle() => Future<String?>.value(
      _storage.get<String>(activityCreation + _separator + _titlKey));

  @override
  Future<void> setActivityBudget({required BudgetDataModel budget}) async {
    _storage.add(activityCreation + _separator + _budgetKey, budget);
  }

  @override
  Future<void> setActivityCategory({required ActivityTypeData category}) async {
    _storage.add(activityCreation + _separator + _categoryKey, category);
  }

  @override
  Future<void> setActivityDesc({required String desc}) async {
    _storage.add(activityCreation + _separator + _descKey, desc);
  }

  @override
  Future<void> setActivityImage({required String image}) async {
    _storage.add(activityCreation + _separator + _imageKey, image);
  }

  @override
  Future<void> setActivityLinkRef({required String link}) async {
    _storage.add(activityCreation + _separator + _linkKey, link);
  }

  @override
  Future<void> setActivityLocation({required AddressDataModel location}) async {
    _storage.add(activityCreation + _separator + _locationKey, location);
  }

  @override
  Future<void> setActivityParticipantFilter({
    required Set<ParticipantAttributeData> filters,
  }) async {
    _storage.add(activityCreation + _separator + _filtersKey, filters);
  }

  @override
  Future<void> setActivityParticipantNumber({required int number}) async {
    _storage.add(activityCreation + _separator + _participantNumberKey, number);
  }

  @override
  Future<void> setActivityTitle({required String title}) async {
    _storage.add(activityCreation + _separator + _titlKey, title);
  }

  @override
  Future<DateTime?> getActivityStartingDate() => Future<DateTime?>.value(
      _storage.get<DateTime>(activityCreation + _separator + _startingDateKey));

  @override
  Future<void> setActivityStartingDate({required DateTime date}) async {
    _storage.add(activityCreation + _separator + _startingDateKey, date);
  }
}
