import 'package:collection/collection.dart';

/// Extension for missing methods on iterable
extension CollectionExt<T extends Object> on Iterable<T> {
  /// mapNotNull method
  Iterable<R> mapNotNull<R>(R? Function(T element) convert) sync* {
    for (final T element in this) {
      final R? result = convert(element);
      if (result != null) {
        yield result;
      }
    }
  }
}

/// Extension for mission methods on Map
extension MapExt<K, V> on Map<K, V> {
  /// forEachIndexed method
  void forEachIndexed(void Function(int index, K key, V value) callback) {
    entries.forEachIndexed((int index, MapEntry<K,V> element) {
      callback.call(index, element.key, element.value);
    });
  }
}
