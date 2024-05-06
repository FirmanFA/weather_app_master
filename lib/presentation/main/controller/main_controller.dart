import 'package:flutter/cupertino.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:weather_app_master/core/remote/api_result.dart';
import 'package:weather_app_master/core/repository/city_repository.dart';
import 'package:weather_app_master/core/repository/weather_repository.dart';
import 'package:weather_app_master/presentation/main/model/city/get_city_response.dart';
import 'package:weather_app_master/presentation/main/model/forecast/get_forecast_response.dart';
import 'package:weather_app_master/presentation/main/model/weather/get_weather_response.dart';
import 'package:weather_app_master/utils/location_util.dart';

class MainController extends GetxController {
  var selectedCityString = "".obs;
  Rxn<Location> selectedLocation = Rxn();

  final cityNameController = TextEditingController();

  final cityOverlayPortalController = OverlayPortalController();

  final PagingController<int, CityData> pagingController =
      PagingController(firstPageKey: 1);

  final _weatherRepository = WeatherRepository();
  final _cityRepository = CityRepository();

  Rx<UIState<GetWeatherResponse>> currentWeatherState = Rx(UiLoading());

  Rx<UIState<GetForecastResponse>> weatherForecastState = Rx(UiLoading());

  Rxn<UIState<GetCityResponse>> cityListState = Rxn();

  @override
  void onInit() {
    getUserPosition();

    pagingController.addPageRequestListener((pageKey) {
      getCityListByKeyword(pageKey);
    });

    super.onInit();
  }

  getUserPosition() {
    LocationUtil.determinePosition().then((value) async {
      if (value != null) {
        setSelectedCity(await value.getCityName);
        setSelectedLocation(value.toLocation);
        getCurrentWeather();
        getWeatherForecast();
      } else {}
    });
  }

  getCurrentWeather() {
    currentWeatherState.value = UiLoading();
    update();
    _weatherRepository.getCurrentWeather(queryParams: {
      'units': 'metric',
      'lon': selectedLocation.value?.longitude,
      'lat': selectedLocation.value?.latitude,
    }).then((value) {
      currentWeatherState.value = UiSuccess(value);
      update();
    }).catchError((er) {
      Get.snackbar("Gagal", er.message);
      currentWeatherState.value = UiFailure(er.message);
      update();
    });
  }

  getWeatherForecast() {
    weatherForecastState.value = UiLoading();
    update();
    _weatherRepository.get5DayForecast(queryParams: {
      'units': 'metric',
      'lon': selectedLocation.value?.longitude,
      'lat': selectedLocation.value?.latitude,
    }).then((value) {
      weatherForecastState.value = UiSuccess(value);
      update();
    }).catchError((er) {
      Get.snackbar("Gagal", er.message);
      weatherForecastState.value = UiFailure(er.message);
      update();
    });
  }

  getCityListByKeyword(int pageKey) {
    _cityRepository.getCityList(queryParams: {
      'name': cityNameController.text.trim(),
      'limit': 10,
      'page': pageKey
    }).then((value) {
      final isLastPage = value.meta?.pagination?.pages?.next == null;

      if (isLastPage) {
        pagingController.appendLastPage(value.data ?? []);
      } else {
        pagingController.appendPage(value.data ?? [], pageKey + 1);
      }
    }).catchError((er) {
      pagingController.error = er.message;
      update();
    });
  }

  setLocationFromCityString({required Function() onSuccess}) {
    LocationUtil.getLocationFromCityName(cityName: selectedCityString.value)
        .then((value) {
      if (value != null) {
        setSelectedLocation(value);
        onSuccess.call();
        update();
      }
    });
  }

  setCityListStateNull() {
    cityListState.value = null;
    update();
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
