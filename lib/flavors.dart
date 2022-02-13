enum Flavor {
  MOCK,
  STAGING,
  PROD,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.MOCK:
        return 'Moony mocked App';
      case Flavor.STAGING:
        return 'Moony staging App';
      case Flavor.PROD:
        return 'Moony';
      default:
        return 'title';
    }
  }

}
