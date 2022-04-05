import 'package:moony_app/activity_creation/data/remote/model/activity_creation_data_model.dart';
import 'package:moony_app/common/data/remote/failure/http_exception.dart';

abstract class IActivityCreationRemoteSource {

  Future<HttpFailure?> createActivity({required ActivityCreationDataModel activity});
}
