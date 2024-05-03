import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class LocationUtil {
  static Future<Position?> determinePosition() async {
    LocationPermission permission;

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return null;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return null;
    }

    Position position = await Geolocator.getCurrentPosition();

    return position;
  }

  static Future<Location?> getLocationFromCityName(
      {required String cityName}) async {
    final locationList = await locationFromAddress(cityName);

    if (locationList.isNotEmpty) return locationList.first;

    return null;
  }

  static Future<String> getCurrentCityFromLongLat(
      {required double long, required double lat}) async {
    List<Placemark> placemarks = await placemarkFromCoordinates(
      lat,
      long,
    );
    if (placemarks.isNotEmpty) {
      String city = placemarks[0].subAdministrativeArea ?? "";
      return city;
    }

    return "";
  }
}

extension PositionUtil on Position {
  Future<String> get getCityName async {
    List<Placemark> placemarks = await placemarkFromCoordinates(
      latitude,
      longitude,
    );
    if (placemarks.isNotEmpty) {
      String city = placemarks[0].subAdministrativeArea ?? "";
      return city;
    }

    return "";
  }
}
