/// Gender info for a user
enum Gender {
  /// Male
  male,

  /// Female
  female,

  /// Other
  other
}

/// Mapper extension for Gender to String
extension GenderMapper on Gender {
  String toUi() => name;
}

/// Mapper extension for List<Gender> to Set<String>
extension GenderListMapper on List<Gender> {
  Set<String> toUi() => map((Gender gender) => gender.name).toSet();
}

/// Mapper extension for String to Gender
extension GenderStringMapper on String {
  Gender toGender() =>
      Gender.values.firstWhere((Gender element) => element.name == this,
          orElse: () => throw const FormatException());
}
