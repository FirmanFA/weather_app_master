import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_weather_response.freezed.dart';
part 'get_weather_response.g.dart';

@freezed
class GetWeatherResponse with _$GetWeatherResponse {
  const factory GetWeatherResponse({
    @JsonKey(name: "coord")
    Coord? coord,
    @JsonKey(name: "weather")
    List<Weather>? weather,
    @JsonKey(name: "base")
    String? base,
    @JsonKey(name: "main")
    Main? main,
    @JsonKey(name: "visibility")
    int? visibility,
    @JsonKey(name: "wind")
    Wind? wind,
    @JsonKey(name: "rain")
    Rain? rain,
    @JsonKey(name: "clouds")
    Clouds? clouds,
    @JsonKey(name: "dt")
    int? dt,
    @JsonKey(name: "sys")
    Sys? sys,
    @JsonKey(name: "timezone")
    int? timezone,
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "cod")
    int? cod,
  }) = _GetWeatherResponse;

  factory GetWeatherResponse.fromJson(Map<String, dynamic> json) => _$GetWeatherResponseFromJson(json);
}

@freezed
class Clouds with _$Clouds {
  const factory Clouds({
    @JsonKey(name: "all")
    int? all,
  }) = _Clouds;

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
}

@freezed
class Coord with _$Coord {
  const factory Coord({
    @JsonKey(name: "lon")
    double? lon,
    @JsonKey(name: "lat")
    double? lat,
  }) = _Coord;

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
}

@freezed
class Main with _$Main {
  const factory Main({
    @JsonKey(name: "temp")
    double? temp,
    @JsonKey(name: "feels_like")
    double? feelsLike,
    @JsonKey(name: "temp_min")
    double? tempMin,
    @JsonKey(name: "temp_max")
    double? tempMax,
    @JsonKey(name: "pressure")
    int? pressure,
    @JsonKey(name: "humidity")
    int? humidity,
    @JsonKey(name: "sea_level")
    int? seaLevel,
    @JsonKey(name: "grnd_level")
    int? grndLevel,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

@freezed
class Rain with _$Rain {
  const factory Rain({
    @JsonKey(name: "1h")
    double? the1H,
  }) = _Rain;

  factory Rain.fromJson(Map<String, dynamic> json) => _$RainFromJson(json);
}

@freezed
class Sys with _$Sys {
  const factory Sys({
    @JsonKey(name: "type")
    int? type,
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "country")
    String? country,
    @JsonKey(name: "sunrise")
    int? sunrise,
    @JsonKey(name: "sunset")
    int? sunset,
  }) = _Sys;

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}

@freezed
class Weather with _$Weather {
  const factory Weather({
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "main")
    String? main,
    @JsonKey(name: "description")
    String? description,
    @JsonKey(name: "icon")
    String? icon,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
}

@freezed
class Wind with _$Wind {
  const factory Wind({
    @JsonKey(name: "speed")
    double? speed,
    @JsonKey(name: "deg")
    int? deg,
    @JsonKey(name: "gust")
    double? gust,
  }) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}
