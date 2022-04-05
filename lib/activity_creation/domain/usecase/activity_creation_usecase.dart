import 'package:moony_app/activity_creation/domain/activity_creation_failure.dart';
import 'package:moony_app/activity_creation/domain/model/participant_attribute.dart';
import 'package:moony_app/activity_creation/domain/repository/activity_creation_repository.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/domain/activity/model/budget.dart';
import 'package:moony_app/common/domain/activity/model/category.dart';
import 'package:moony_app/common/domain/activity/model/description.dart';
import 'package:moony_app/common/domain/activity/model/participant_number.dart';
import 'package:moony_app/common/domain/activity/model/starting_date.dart';
import 'package:moony_app/common/domain/activity/model/title.dart';
import 'package:moony_app/common/domain/model/address.dart';

/// Try to register an user with current info
class CreateActivityFromLocalUseCase
    extends AsyncUseCase<CreatingActivityFailure?> {
  /// Constructor
  CreateActivityFromLocalUseCase(this._activityCreationRepo);

  final IActivityFieldsSavable _activityCreationRepo;

  @override
  Future<CreatingActivityFailure?> call({void input}) =>
      _activityCreationRepo.createFromLocal();
}

class SaveActivityBudgetUseCase extends AsyncParamUseCase<Budget, void> {
  /// Constructor
  SaveActivityBudgetUseCase(this._activityCreationRepo);

  final IActivityFieldsSavable _activityCreationRepo;

  @override
  Future<void> call({required Budget input}) =>
      _activityCreationRepo.setActivityBudget(budget: input);
}

class SaveActivityCategoryUseCase
    extends AsyncParamUseCase<ActivityType, void> {
  /// Constructor
  SaveActivityCategoryUseCase(this._activityCreationRepo);

  final IActivityFieldsSavable _activityCreationRepo;

  @override
  Future<void> call({required ActivityType input}) async =>
      _activityCreationRepo.setActivityCategory(category: input);
}

class SaveActivityParticipantNumberUseCase
    extends AsyncParamUseCase<ParticipantNumber, void> {
  /// Constructor
  SaveActivityParticipantNumberUseCase(this._activityCreationRepo);

  final IActivityFieldsSavable _activityCreationRepo;

  @override
  Future<void> call({required ParticipantNumber input}) =>
      _activityCreationRepo.setActivityParticipantNumber(number: input);
}

class SaveActivityParticipantFilterUseCase
    extends AsyncParamUseCase<Set<ParticipantAttribute>, void> {
  /// Constructor
  SaveActivityParticipantFilterUseCase(this._activityCreationRepo);

  final IActivityFieldsSavable _activityCreationRepo;

  @override
  Future<void> call({required Set<ParticipantAttribute> input}) =>
      _activityCreationRepo.setActivityParticipantFilter(
        filters: input,
      );
}

/// Parameter for class SaveActivityDescriptionUseCase
class SaveActivityDescriptionUseCaseParam {
  /// Constructor
  SaveActivityDescriptionUseCaseParam({
    required this.activityTitle,
    required this.activityDescription,
    required this.expectedStartingDate,
    required this.address,
    required this.link,
    required this.image,
  });

  final ActivityTitle activityTitle;
  final ActivityDescription activityDescription;
  final ExpectedStartingDate expectedStartingDate;
  final Address address;
  final Uri? link;
  final Uri image;
}

class SaveActivityDescriptionUseCase
    extends AsyncParamUseCase<SaveActivityDescriptionUseCaseParam, void> {
  /// Constructor
  SaveActivityDescriptionUseCase(this._activityCreationRepo);

  final IActivityFieldsSavable _activityCreationRepo;

  @override
  Future<void> call({required SaveActivityDescriptionUseCaseParam input}) =>
      _activityCreationRepo.setActivityDescription(description: input);
}
