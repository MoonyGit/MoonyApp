import 'package:collection/collection.dart';
import 'package:moony_app/common/data/services/storage/storage_remote_source.dart';
import 'package:moony_app/common/data/user/remote/photo_remote_source.dart';

/// PhotoRemoteSource implementation
class PhotoRemoteSourceImpl extends PhotoRemoteSource {
  /// Constructor
  PhotoRemoteSourceImpl(this._service);

  static const String _serverPathPrefix = "user_photos/";
  static const String _serverPathProfileSuffix = "/profile";
  static const String _serverProfilePhotoName = "/photo";
  static const String _serverPathSecondarySuffix = "/secondary";
  final StorageRemoteSource _service;

  @override
  Future<List<String>?> uploadSecondaryPhotos(
      {required List<String> paths, required String userId}) {
    return Future.wait(paths.mapIndexed((int index, String localUrl) async {
      final String indexPhoto = (index + 1).toString();
      final String userPhotoPath = _serverPathPrefix +
          userId +
          _serverPathSecondarySuffix +
          _serverProfilePhotoName +
          indexPhoto;
      return (await _service.uploadFile(
          remotePath: userPhotoPath, localPath: localUrl))!;
    }));
  }

  @override
  Future<String?> uploadProfilePhoto(
      {required String path, required String userId}) async {
    final String userPhotoPath = _serverPathPrefix +
        userId +
        _serverPathProfileSuffix +
        _serverProfilePhotoName +
        1.toString();
    return _service.uploadFile(remotePath: userPhotoPath, localPath: path);
  }
}
