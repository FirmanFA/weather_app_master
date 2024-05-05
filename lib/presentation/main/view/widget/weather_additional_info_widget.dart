import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app_master/core/remote/api_result.dart';
import 'package:weather_app_master/presentation/main/model/forecast/get_forecast_response.dart';
import 'package:weather_app_master/presentation/main/model/weather/get_weather_response.dart';
import 'package:weather_app_master/presentation/main/view/widget/main_weather_additional_info_widget.dart';
import 'package:weather_app_master/presentation/main/view/widget/weather_forecast_horizontal_list.dart';

class WeatherAdditionalInfoWidget extends StatelessWidget {
  final GetWeatherResponse weatherData;
  final UIState<GetForecastResponse> weatherForecastState;

  const WeatherAdditionalInfoWidget(
      {super.key,
      required this.weatherData,
      required this.weatherForecastState});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          MainWeatherAdditionalInfoWidget(weatherData: weatherData),
          12.horizontalSpace,
          WeatherForecastHorizontalList(weatherForecastState: weatherForecastState)
        ],
      ),
    );
  }
}
