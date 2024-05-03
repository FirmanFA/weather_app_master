import 'package:weather_app_master/core/remote/api_service.dart';
import 'package:weather_app_master/core/remote/dio_service.dart';

class WeatherRepository {
  final ApiService _apiService;

  WeatherRepository() : _apiService = ApiService(dioService);


}
