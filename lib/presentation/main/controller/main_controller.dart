import 'package:flutter/cupertino.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:weather_app_master/utils/location_util.dart';

class MainController extends GetxController {
  var selectedCityString = "".obs;
  Rxn<Location> selectedLocation = Rxn();

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
      } else {}
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
