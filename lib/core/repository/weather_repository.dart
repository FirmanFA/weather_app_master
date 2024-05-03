import 'package:weather_app_master/core/remote/api_service.dart';
import 'package:weather_app_master/core/remote/custom_exception.dart';
import 'package:weather_app_master/core/remote/dio_service.dart';
import 'package:weather_app_master/core/remote/endpoint/api_endpoint.dart';
import 'package:weather_app_master/core/remote/endpoint/enum_endpoint.dart';
import 'package:weather_app_master/presentation/main/model/forecast/get_forecast_response.dart';
import 'package:weather_app_master/presentation/main/model/weather/get_weather_response.dart';
import 'package:weather_app_master/utils/typedefs.dart';

class WeatherRepository {
  final ApiService _apiService;

  WeatherRepository() : _apiService = ApiService(dioService);

  Future<GetWeatherResponse> getCurrentWeather(
      {required JSON queryParams}) async {
    try {
      return _apiService.getDocumentData<GetWeatherResponse>(
        endpoint: ApiEndpoint.weather(WeatherEndpoint.getCurrentWeather),
        queryParams: queryParams,
        requiresAuthToken: true,
        converter: (response) => GetWeatherResponse.fromJson(response),
      );
    } on CustomException {
      rethrow;
    }
  }

  Future<GetForecastResponse> get5DayForecast(
      {required JSON queryParams}) async {
    try {
      return _apiService.getDocumentData<GetForecastResponse>(
        endpoint: ApiEndpoint.weather(WeatherEndpoint.get5DayForecast),
        queryParams: queryParams,
        requiresAuthToken: true,
        converter: (response) => GetForecastResponse.fromJson(response),
      );
    } on CustomException {
      rethrow;
    }
  }

}
