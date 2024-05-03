// ignore_for_file: constant_identifier_names
// DO NOT USE 'dartfmt' on this file for formatting

import 'package:flutter/material.dart';
import 'package:weather_app_master/core/remote/endpoint/enum_endpoint.dart';

/// A utility class for getting paths for API endpoints.
/// This class has no constructor and all methods are `static`.
@immutable
class ApiEndpoint {
  const ApiEndpoint._();

  /// https://api.openweathermap.org/data/3.0/onecall?lat=33.44&lon=-94.04&appid=073ad9e22e0b29bed8693631a41dc840
  // String weatherApiKey = "073ad9e22e0b29bed8693631a41dc840";

  /// Returns the path for an weather [endpoint].
  static String weather(WeatherEndpoint endpoint) {
    const path = 'https://api.openweathermap.org/data/2.5';
    switch (endpoint) {
      case WeatherEndpoint.get5DayForecast:
        return '$path/forecast';
      case WeatherEndpoint.getCurrentWeather:
        return '$path/weather';
    }
  }
}
