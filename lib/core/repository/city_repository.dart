import 'package:weather_app_master/core/remote/api_service.dart';
import 'package:weather_app_master/core/remote/custom_exception.dart';
import 'package:weather_app_master/core/remote/dio_service.dart';
import 'package:weather_app_master/core/remote/endpoint/api_endpoint.dart';
import 'package:weather_app_master/core/remote/endpoint/enum_endpoint.dart';
import 'package:weather_app_master/presentation/main/model/city/get_city_response.dart';
import 'package:weather_app_master/utils/typedefs.dart';

class CityRepository {
  final ApiService _apiService;

  CityRepository() : _apiService = ApiService(dioService);

  Future<GetCityResponse> getCurrentWeather(
      {required JSON queryParams}) async {
    try {
      return _apiService.getDocumentData<GetCityResponse>(
        endpoint: ApiEndpoint.city(CityEndpoint.getCityList),
        queryParams: queryParams,
        requiresAuthToken: true,
        converter: (response) => GetCityResponse.fromJson(response),
      );
    } on CustomException {
      rethrow;
    }
  }


}
