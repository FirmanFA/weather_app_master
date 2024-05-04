extension StringUtil on String {


  /// this code will cluster the icon code from weather api to local asset
  /// since this project not covering all the icon, so it needs to cluster the icon
  /// into similar weather
  /// example: shower rain and regular rain would be clustered into just rain
  /// for detailed explanation for icon code,
  /// see [https://openweathermap.org/weather-conditions]
  String get clusterWeatherIconToLocalAsset {
    assert(contains("n") || contains("d") || length == 3,
        "not a valid icon string");

    String assetName = "assets/lottie/weather/";

    if (contains("01")) {
      if (contains("d")) {
        assetName += "day_bright.json";
      } else {
        assetName += "night_bright.json";
      }
    }

    if (contains("02") || contains("03") || contains("04")) {
      if (contains("d")) {
        assetName += "day_cloud.json";
      } else {
        assetName += "night_cloud.json";
      }
    }

    if (contains("09") || contains("10")) {
      if (contains("d")) {
        assetName += "day_rain.json";
      } else {
        assetName += "night_rain.json";
      }
    }

    if (contains("11")) {
      if (contains("d")) {
        assetName += "day_thunderstorm.json";
      } else {
        assetName += "night_thunderstorm.json";
      }
    }

    if (contains("50")) {
      assetName += "haze.json";
    }

    /// check whether the icon string is clustered correctly
    assert(assetName != "assets/lottie/weather/");

    return assetName;
  }
}

String clusterWeatherIconToLocalAsset() {
  return "";
}
