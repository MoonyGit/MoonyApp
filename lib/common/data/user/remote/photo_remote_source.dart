/// Photo remote source
abstract class PhotoRemoteSource {
  /// Upload a list of local photo and return list of photo urls
  Future<List<String>?> uploadSecondaryPhotos(
      {required List<String> paths, required String userId});
  /// Upload a local photo and return a photo url
  Future<String?> uploadProfilePhoto(
      {required String path, required String userId});
}