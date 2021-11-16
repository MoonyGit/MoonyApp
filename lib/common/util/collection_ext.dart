
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
