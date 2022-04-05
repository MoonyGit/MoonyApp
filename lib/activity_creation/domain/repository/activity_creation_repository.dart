import 'package:moony_app/activity_creation/domain/activity_creation_failure.dart';
import 'package:moony_app/activity_creation/domain/model/activity_creation.dart';
import 'package:moony_app/activity_creation/domain/model/participant_attribute.dart';
import 'package:moony_app/activity_creation/domain/usecase/activity_creation_usecase.dart';
import 'package:moony_app/common/domain/activity/model/budget.dart';
import 'package:moony_app/common/domain/activity/model/category.dart';
import 'package:moony_app/common/domain/activity/model/description.dart';
import 'package:moony_app/common/domain/activity/model/participant_number.dart';
import 'package:moony_app/common/domain/activity/model/starting_date.dart';
import 'package:moony_app/common/domain/activity/model/title.dart';
import 'package:moony_app/common/domain/model/address.dart';
import 'package:moony_app/common/domain/user/model/hobby.dart';

/// Activity creation repository
abstract class IActivityCreationRepository implements IActivityFieldsSavable,
    IActivityCreatable{}

/// Activity create repository
abstract class IActivityCreatable {
  /// Create or update activity if it exists
  Future<CreatingActivityFailure?> create({
    required ActivityCreationModel activity,
  });
}

abstract class IActivityFieldsSavable {

  Future<CreatingActivityFailure?> createFromLocal();

  Future<void> setActivityDescription({required
  SaveActivityDescriptionUseCaseParam description,});

  Future<void> setActivityBudget({required Budget budget});

  Future<void> setActivityCategory({required ActivityType category});

  Future<void> setActivityParticipantNumber(
      {required ParticipantNumber number,});

  Future<void> setActivityParticipantFilter(
      {required Set<ParticipantAttribute> filters,});
}