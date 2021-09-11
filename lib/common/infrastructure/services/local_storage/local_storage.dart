import 'dart:async';

/// Class used to abstract local key-value store (shared preferences...)
abstract class ILocalStorage {

  /// Saves a [value] to persistent storage in the background.
  Future<void> add(String key, dynamic value);

  /// Reads a value of any type from persistent storage.
  T? get<T>(String key);

  /// Reads all value of any type from persistent storage.
  T? getAll<T>();

  /// Removes an entry from persistent storage.
  Future<void> remove(String key);

  /// Remove a list of data from storage
  Future<void> removeKeys(List<String> keys);

  /// Completes with true once the user preferences for the app has been cleared
  Future<void> removeAll();

  /// Returns true if persistent storage the contains the given [key].
  Future<bool> containsKey(String key);
}
