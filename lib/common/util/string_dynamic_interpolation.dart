/// extension on string that allow "pouet%1\$prout%2\$".format([4, "miam"])
extension StringDynamicInterpolationExt on String {
  /// Format extension method
  String format(List<String> params) => _interpolate(this, params);

  String _interpolate(String string, List<String> params) {

    String result = string;
    for (int i = 1; i < params.length + 1; i++) {
      result = result.replaceAll('%$i\$', params[i-1]);
    }

    return result;
  }
}