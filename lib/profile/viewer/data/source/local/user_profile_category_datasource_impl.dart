/// Interface for provide the data source of all category for user profile
abstract class UserProfileCategoryDataSource {
  /// return list of all category for the user profile
  Future<List<String>> getCategory();
}

/// User profile category data source
class UserProfileCategoryDataSourceImpl extends UserProfileCategoryDataSource {
  @override
  Future<List<String>> getCategory() {
    return Future<List<String>>.value(
      <String>[
        "sex",
        "gender",
        "language",
        "relation",
        "passion",
        "travel",
        "jobs",
        "studies",
        "foods",
        "dietetic",
        "astrology",
        "tobacco",
        "alcohol",
        "drink",
        "communication",
        "pets",
        "kids",
      ],
    );
  }
}
