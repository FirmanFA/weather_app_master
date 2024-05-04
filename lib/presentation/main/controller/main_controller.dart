import 'package:flutter/cupertino.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:weather_app_master/core/remote/api_result.dart';
import 'package:weather_app_master/core/repository/weather_repository.dart';
import 'package:weather_app_master/presentation/main/model/weather/get_weather_response.dart';
import 'package:weather_app_master/utils/location_util.dart';

class MainController extends GetxController {
  var selectedCityString = "".obs;
  Rxn<Location> selectedLocation = Rxn();

  final _weatherRepository = WeatherRepository();

  Rx<UIState<GetWeatherResponse>> currentWeatherState = Rx(UiLoading());

  @override
  void onInit() {
    getUserPosition();

    super.onInit();
  }

  getUserPosition() {
    LocationUtil.determinePosition().then((value) async {
      if (value != null) {
        setSelectedCity(await value.getCityName);
        setSelectedLocation(value.toLocation);
        getCurrentWeather();
      } else {}
    });
  }

  getCurrentWeather() {
    currentWeatherState.value = UiLoading();
    _weatherRepository.getCurrentWeather(queryParams: {
      'units': 'metric',
      'lon': selectedLocation.value?.longitude,
      'lat': selectedLocation.value?.latitude,
    }).then((value) {
      currentWeatherState.value = UiSuccess(value);
    }).catchError((er) {
      Get.snackbar("Gagal", er.message);
      currentWeatherState.value = UiFailure(er.message);
    });
  }

  setSelectedCity(String value) {
    selectedCityString.value = value;
    debugPrint("selected city: ${selectedCityString.value}");
    update();
  }

  setSelectedLocation(Location value) {
    selectedLocation.value = value;
    debugPrint("selected location: ${selectedLocation.value?.toString()}");
    update();
  }
}
