enum Flavor {
  apple,
  banana,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.apple:
        return 'Apple App';
      case Flavor.banana:
        return 'Banana App';
      default:
        return 'title';
    }
  }

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.apple:
        return 'https://dev.com/';
      case Flavor.banana:
        return 'https://prod.com/';
      default:
        return 'none';
    }
  }

  static bool get showBanner => appFlavor == Flavor.apple;
}
