import 'package:kt_dart/kt.dart';
import 'package:moony_app/activity_creation/data/local/activity_creation_local_source.dart';
import 'package:moony_app/activity_creation/data/remote/activity_creation_remote_source.dart';
import 'package:moony_app/activity_creation/data/remote/model/activity_creation_data_model.dart';
import 'package:moony_app/activity_creation/data/remote/model/activity_participant_filter.dart';
import 'package:moony_app/activity_creation/domain/activity_creation_failure.dart';
import 'package:moony_app/activity_creation/domain/model/activity_creation.dart';
import 'package:moony_app/activity_creation/domain/model/participant_attribute.dart';
import 'package:moony_app/activity_creation/domain/repository/activity_creation_repository.dart';
import 'package:moony_app/activity_creation/domain/usecase/activity_creation_usecase.dart';
import 'package:moony_app/authentication/data/remote/authentication_data_source.dart';
import 'package:moony_app/common/data/activity/remote/activity_type.dart';
import 'package:moony_app/common/data/activity/remote/budget_data_model.dart';
import 'package:moony_app/common/data/model/address_data_model.dart';
import 'package:moony_app/common/data/remote/failure/http_exception.dart';
import 'package:moony_app/common/domain/activity/model/budget.dart';
import 'package:moony_app/common/domain/activity/model/category.dart';
import 'package:moony_app/common/domain/activity/model/participant_number.dart';
import 'package:moony_app/common/util/logger.dart';

/// ActivityCreationRepository
class ActivityCreationRepositoryImpl extends IActivityCreationRepository {
  /// Constructor
  ActivityCreationRepositoryImpl(
    this._authDataSource,
    this._remoteSource,
    this._localSource,
  );

  final AuthDataSource _authDataSource;
  final IActivityCreationRemoteSource _remoteSource;
  final IActivityCreationLocalSource _localSource;

  @override
  Future<CreatingActivityFailure?> create({
    required ActivityCreationModel activity,
  }) {
    return _remoteSource
        .createActivity(activity: activity.toData())
        .then((HttpFailure? value) => null);
  }

  @override
  Future<CreatingActivityFailure?> createFromLocal() async {
    final AuthUserDataSourceModel? auth =
        await _authDataSource.getSignedInUser();
    final String? image = await _localSource.getActivityImage();
    final String? title = await _localSource.getActivityTitle();
    final String? desc = await _localSource.getActivityDesc();
    final DateTime? starting = await _localSource.getActivityStartingDate();
    final ActivityTypeData? category = await _localSource.getActivityCategory();
    final AddressDataModel? location = await _localSource.getActivityLocation();
    final BudgetDataModel? budget = await _localSource.getActivityBudget();
    final int? participantNumber =
        await _localSource.getActivityParticipantNumber();
    final Set<ParticipantAttributeData>? participantFilter =
        await _localSource.getActivityParticipantFilter();

    try {
      final HttpFailure? result = await _remoteSource.createActivity(
        activity: ActivityCreationDataModel(
          creatorId: auth!.id,
          imageUri: image!,
          title: title!,
          description: desc!,
          expectedStartingDate: starting!,
          category: category!,
          location: location!,
          budget: budget!,
          participantNumber: participantNumber!,
          filterParticipant:
              participantFilter ?? Set<ParticipantAttributeData>.identity(),
        ),
      );

      return result?.toCreatingActivityFailure();
    } catch (ex, trace) {
      Logger.e(trace);
      return const CreatingActivityFailure();
    }
  }

  @override
  Future<void> setActivityBudget({required Budget budget}) async {
    _localSource.setActivityBudget(budget: budget.toData());
  }

  @override
  Future<void> setActivityCategory({required ActivityType category}) async {
    _localSource.setActivityCategory(category: category.toData());
  }

  @override
  Future<void> setActivityDescription({
    required SaveActivityDescriptionUseCaseParam description,
  }) async {
    _localSource.setActivityTitle(
      title: description.activityTitle.getOrCrash(),
    );
    _localSource.setActivityDesc(
      desc: description.activityDescription.getOrCrash(),
    );
    _localSource.setActivityStartingDate(
      date: description.expectedStartingDate.getOrCrash(),
    );
    _localSource.setActivityLocation(location: description.address.toData());
    _localSource.setActivityImage(image: description.image.toString());
    description.link?.let((Uri it) {
      _localSource.setActivityLinkRef(link: it.toString());
    });
  }

  @override
  Future<void> setActivityParticipantFilter({
    required Set<ParticipantAttribute> filters,
  }) async {
    _localSource.setActivityParticipantFilter(
      filters: filters.toData(),
    );
  }

  @override
  Future<void> setActivityParticipantNumber({
    required ParticipantNumber number,
  }) async {
    _localSource.setActivityParticipantNumber(number: number.getOrCrash());
  }
}

/// Convert http exception to activity creation failure
extension ActivityCreationFailureMapper on HttpFailure {
  /// Mapper method
  CreatingActivityFailure? toCreatingActivityFailure() {
    switch (errorCode) {
      case CreatingActivityFailure.errorCode:
        return CreatingActivityFailure(message: message);
      case CreatingActivityBadKeywordFailure.errorCode:
        return CreatingActivityBadKeywordFailure(message: message);
      default:
        return null;
    }
  }
}

/// Mapper extension to convert ActivityCreation domain to data
extension ActivityCreationMapper on ActivityCreationModel {
  /// Mapper method
  ActivityCreationDataModel toData() {
    return ActivityCreationDataModel(
      creatorId: creatorId,
      title: title.getOrCrash(),
      description: description.getOrCrash(),
      imageUri: imageUri.toString(),
      expectedStartingDate: expectedStartingDate?.getOrCrash(),
      linkReference: linkReference.toString(),
      category: category.toData(),
      location: location.toData(),
      budget: budget.toData(),
      participantNumber: participantNumber.getOrCrash(),
      filterParticipant: filterParticipant.toData(),
    );
  }
}

/// Participant filter mapper
extension ParticipantFilterData on ParticipantAttribute {
  /// Mapper method
  ParticipantAttributeData toData() {
    switch (this) {
      case ParticipantAttribute.couple:
        return ParticipantAttributeData.couple;
      case ParticipantAttribute.female:
        return ParticipantAttributeData.female;
      case ParticipantAttribute.hetero:
        return ParticipantAttributeData.hetero;
      case ParticipantAttribute.homo:
        return ParticipantAttributeData.homo;
      case ParticipantAttribute.male:
        return ParticipantAttributeData.male;
      case ParticipantAttribute.single:
        return ParticipantAttributeData.single;
    }
  }
}

/// Participant filter mapper
extension ParticipantFilterDomain on ParticipantAttributeData {
  /// Mapper method
  ParticipantAttribute toDomain() {
    switch (this) {
      case ParticipantAttributeData.couple:
        return ParticipantAttribute.couple;
      case ParticipantAttributeData.female:
        return ParticipantAttribute.female;
      case ParticipantAttributeData.hetero:
        return ParticipantAttribute.hetero;
      case ParticipantAttributeData.homo:
        return ParticipantAttribute.homo;
      case ParticipantAttributeData.male:
        return ParticipantAttribute.male;
      case ParticipantAttributeData.single:
        return ParticipantAttribute.single;
    }
  }
}

/// Participant filter mapper Set
extension ParticipantFilterDataSet on Set<ParticipantAttribute> {
  /// Mapper method
  Set<ParticipantAttributeData> toData() =>
      map((ParticipantAttribute e) => e.toData()).toSet();
}

/// Participant filter mapper Set
extension ParticipantFilterDomainSet on Set<ParticipantAttributeData> {
  /// Mapper
  Set<ParticipantAttribute> toDomain() =>
      map((ParticipantAttributeData e) => e.toDomain()).toSet();
}
