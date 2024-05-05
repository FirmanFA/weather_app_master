import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app_master/presentation/main/model/weather/get_weather_response.dart';
import 'package:weather_app_master/utils/string_utils.dart';

class MainWeatherWidget extends StatelessWidget {

  final GetWeatherResponse weatherData;

  const MainWeatherWidget({super.key, required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: Get.width,
          height: Get.width,
          child: LottieBuilder.asset(
            weatherData.weather?.first.icon
                ?.clusterWeatherIconToLocalAsset ??
                "",
            width: Get.width,
          ),
        ),
        Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 24),
          child: Table(
            children: [
              TableRow(children: [
                TableCell(
                  verticalAlignment:
                  TableCellVerticalAlignment.bottom,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "${weatherData.main?.temp?.toStringAsFixed(0) ?? "-"}\u00B0",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 200.sp),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    SizedBox(
                      height: 60,
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        mainAxisAlignment:
                        MainAxisAlignment.end,
                        children: [
                          Text(
                            weatherData
                                .weather?.first.main ??
                                "-",
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.7,
                            ),
                          ),
                          Text(
                            "Feels like: ${weatherData.main?.feelsLike?.toStringAsFixed(0) ?? "-"}\u00B0",
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.7,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            ],
          ),
        ),
      ],
    );
  }
}
