import 'package:moony_app/activity_creation/data/remote/activity_creation_remote_source.dart';
import 'package:moony_app/activity_creation/data/remote/model/activity_creation_data_model.dart';
import 'package:moony_app/activity_creation/domain/activity_creation_failure.dart';
import 'package:moony_app/activity_creation/domain/model/activity_creation.dart';
import 'package:moony_app/activity_creation/domain/repository/activity_creation_repository.dart';
import 'package:moony_app/common/data/address_data_model.dart';
import 'package:moony_app/common/data/remote/failure/http_exception.dart';
import 'package:moony_app/common/data/user/remote/hobby_data_model.dart';

class ActivityCreationRepositoryImpl extends IActivityCreationRepository{
  ActivityCreationRepositoryImpl(this.remoteSource);

  final IActivityCreationRemoteSource remoteSource;

  @override
  Future<CreatingActivityFailure?> create({required ActivityCreationModel activity}) {
    return remoteSource.create(activity: activity.toData()).then((HttpFailure? value) => null);
  }
}

extension ActivityCreationFailureMapper on HttpFailure{
  CreatingActivityFailure? toCreatingActivityFailure(){
    switch (this.errorCode) {
      case CreatingActivityFailure.errorCode:
        return CreatingActivityFailure(message: message);
      case CreatingActivityBadKeywordFailure.errorCode:
        return CreatingActivityBadKeywordFailure(message: message);
      default :
        return null;
    }
  }
}

/// Mapper extension to convert ActivityCreation domain to data
extension ActivityCreationMapper on ActivityCreationModel{
  ActivityCreationDataModel toData(){
    return ActivityCreationDataModel(
      creatorId: creatorId,
      title: title.getOrCrash(),
      description: description.getOrCrash(),
      imageUri: imageUri.toString(),
      expectedStartingDate: expectedStartingDate?.getOrCrash(),
      linkReference: linkReference.toString(),
      category: category.toDataSource(),
      location: location.toData(),
      budgetWeight: budgetWeight.getOrCrash(),
      maxParticipants: maxParticipants.getOrCrash(),
      filterParticipant: filterParticipant
    );
  }
}