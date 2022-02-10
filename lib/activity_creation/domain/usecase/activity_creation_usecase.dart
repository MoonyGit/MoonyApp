// import 'package:moony_app/activity_creation/data/remote/activity_creation_remote_source.dart';
// import 'package:moony_app/activity_creation/domain/model/activity.dart';
// import 'package:moony_app/activity_creation/data/remote/activity_creation_data_model.dart';
// import 'package:moony_app/authentication/data/remote/authentication_data_source.dart';
// import 'package:moony_app/common/base/domain/usecase/usecase.dart';
//
// /// Try to register an user with current info
// class CreateActivityUseCase
//     extends AsyncParamUseCase<Activity, ErrorCreatingActivityFailure?> {
//   /// Constructor
//   CreateActivityUseCase(this._activityCreationRepo);
//
//   final IActivityCreationRepository _activityCreationRepo;
//
//   @override
//   Future<ErrorCreatingActivityFailure?> call({required Activity input}) =>
//       _activityCreationRepo.createActivity(activity: input);
// }
//
// abstract class IActivityCreationRepository {
//   Future<ErrorCreatingActivityFailure?> createActivity(
//       {required Activity activity});
//
// }
//
// class ActivityCreationRepository implements IActivityCreationRepository {
//
//   final AuthDataSource _authDataSource;
//   final ActivityRemoteSource _activityRemoteSource;
//
//   ActivityCreationRepository(this._authDataSource, this._activityRemoteSource);
//
//   @override
//   Future<ErrorCreatingActivityFailure?> createActivity(
//       {required Activity activity}) =>
//       _activityRemoteSource.create(
//         activity: ActivityMapper.toData(activity: activity,
//           userId: _authDataSource.getSignedInUser().toString(),
//         ),
//       );
// }
//
// abstract class ActivityMapper {
//   static ActivityDataModel toData(
//       {required Activity activity, required String userId}) =>
//       ActivityDataModel(
//           id: activity.id,
//           image: activity.image.toString(),
//           title: activity.title.toString(),
//           description: activity.description.toString(),
//           expectedStartingDate: activity.expectedStartingDate as DateTime,
//           linkReference: activity.linkReference.toString(),
//           //categories: activity.categories.map((Hobby item) => item.toDataSource()).toList(),
//           //location: activity.location.,
//           budgetWeight: activity.budgetWeight,
//           maxParticipants: activity.maxParticipants,
//           filterParticipant: activity.filterParticipant,
//           interaction: activity.interaction,
//           interactionDetailled: activity.interactionDetailled,
//           creatorInfos: activity.creatorInfos,
//           stateHistory: activity.stateHistory,
//           currentState: activity.currentState,
//       );
// }