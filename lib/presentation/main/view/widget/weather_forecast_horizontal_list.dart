import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app_master/core/remote/api_result.dart';
import 'package:weather_app_master/presentation/main/model/forecast/get_forecast_response.dart';
import 'package:weather_app_master/reusable/widget/data_loader/loader_state_container.dart';
import 'package:weather_app_master/reusable/widget/shimmer/shimmer_container.dart';
import 'package:weather_app_master/utils/string_utils.dart';

class WeatherForecastHorizontalList extends StatelessWidget {

  final UIState<GetForecastResponse> weatherForecastState;

  const WeatherForecastHorizontalList({super.key, required this.weatherForecastState});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 75,
      child: Container(
        height: 128,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius:
          BorderRadius.circular(16.r),
        ),
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            12.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 12),
              child: AutoSizeText(
                "5-DAYS / 3-HOURS FORECAST",
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: LoaderStateContainer(
                state: weatherForecastState,
                success: (data) {
                  final forecastData =
                      data.value.list;

                  return ListView.separated(
                    scrollDirection:
                    Axis.horizontal,
                    // shrinkWrap: true,
                    padding:
                    const EdgeInsets.all(12),
                    itemBuilder:
                        (context, index) {
                      final forecastWeatherDetail =
                      forecastData?[index];

                      return Container(
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey
                                  .withOpacity(
                                  0.3)),
                          color: Colors.grey
                              .withOpacity(0.1),
                          borderRadius:
                          BorderRadius
                              .circular(12.r),
                        ),
                        padding:
                        const EdgeInsets.all(
                            8),
                        child: Column(
                          children: [
                            LottieBuilder.asset(
                              forecastWeatherDetail
                                  ?.weather
                                  ?.first
                                  .icon
                                  ?.clusterWeatherIconToLocalAsset??
                                  "",
                            ),
                            Text(
                              "${forecastWeatherDetail?.main?.tempMin?.toStringAsFixed(0) ?? "-"}\u00B0/"
                                  "${forecastWeatherDetail?.main?.tempMax?.toStringAsFixed(0) ?? "-"}\u00B0",
                              style: TextStyle(
                                fontSize: 9.sp,
                                fontWeight:
                                FontWeight
                                    .w700,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder:
                        (context, index) =>
                    10.horizontalSpace,
                    itemCount:
                    forecastData?.length ?? 0,
                  );
                },
                loading: () {
                  return BasicShimmerContainer(
                      child: ListView.separated(
                        scrollDirection:
                        Axis.horizontal,
                        // shrinkWrap: true,
                        padding:
                        const EdgeInsets.all(12),
                        itemBuilder:
                            (context, index) {
                          return Container(
                            width: 60,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey
                                      .withOpacity(
                                      0.3)),
                              color: Colors.grey
                                  .withOpacity(0.1),
                              borderRadius:
                              BorderRadius
                                  .circular(12.r),
                            ),
                            padding:
                            const EdgeInsets.all(
                                8),
                          );
                        },
                        separatorBuilder:
                            (context, index) =>
                        10.horizontalSpace,
                        itemCount: 5,
                      ));
                },
                failure: (error) {
                  return Container();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
