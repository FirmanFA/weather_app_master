import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app_master/presentation/main/model/weather/get_weather_response.dart';
import 'package:weather_app_master/utils/string_utils.dart';

class MainWeatherAdditionalInfoWidget extends StatelessWidget {

  final GetWeatherResponse weatherData;

  const MainWeatherAdditionalInfoWidget({super.key, required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 30,
      child: Container(
        height: 128,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius:
          BorderRadius.circular(16.r),
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            AutoSizeText(
              "TODAY",
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            LottieBuilder.asset(
              // "assets/lottie/weather/night_bright.json",
              weatherData.weather?.first.icon
                  ?.clusterWeatherIconToLocalAsset ??
                  "",
              width: Get.width,
            ),
            AutoSizeText(
              "${weatherData.main?.tempMin?.toStringAsFixed(0) ?? "-"}\u00B0/"
                  "${weatherData.main?.tempMax?.toStringAsFixed(0) ?? "-"}\u00B0",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
