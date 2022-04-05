import 'package:moony_app/activity_creation/data/remote/activity_creation_remote_source.dart';
import 'package:moony_app/activity_creation/data/remote/model/activity_creation_data_model.dart';
import 'package:moony_app/common/data/remote/failure/http_exception.dart';

class ActivityCreationRemoteSourceImpl implements IActivityCreationRemoteSource {
  const ActivityCreationRemoteSourceImpl();

  @override
  Future<HttpFailure?> createActivity({required ActivityCreationDataModel activity}) {
    return Future.value();
  }
}