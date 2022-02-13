/// Storage remote source
abstract class StorageRemoteSource {
  /// Upload a local file and return its url or null if error
  Future<String?> uploadFile({
    required String localPath,
    required String remotePath,
  });
}
