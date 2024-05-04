import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app_master/constant/constant.dart';
import 'package:weather_app_master/presentation/main/controller/main_controller.dart';
import 'package:weather_app_master/presentation/main/model/city/get_city_response.dart';
import 'package:weather_app_master/reusable/widget/data_loader/loader_state_container.dart';
import 'package:weather_app_master/reusable/widget/shimmer/shimmer_card.dart';
import 'package:weather_app_master/reusable/widget/shimmer/shimmer_container.dart';
import 'package:weather_app_master/utils/string_utils.dart';

class MainPage extends StatelessWidget {
  static const routeName = "/main-page";

  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: MainController(),
        builder: (controller) {
          return Obx(() {
            return Scaffold(
              backgroundColor: primaryColor,
              resizeToAvoidBottomInset: false,
              body: SafeArea(
                  child: LoaderStateContainer(
                state: controller.currentWeatherState.value,
                success: (data) {
                  final weatherData = data.value;

                  return Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.setIsCityInputShown(false);
                        },
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            24.verticalSpace,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    controller.setIsCityInputShown(
                                        !controller.isCityInputShown.value);
                                  },
                                  child: Text(
                                    controller.selectedCityString.value,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                4.horizontalSpace,
                                GestureDetector(
                                  onTap: () {
                                    controller.setIsCityInputShown(
                                        !controller.isCityInputShown.value);
                                  },
                                  child: const Icon(
                                    Iconsax.arrow_down_1,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
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
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                children: [
                                  Expanded(
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
                                  ),
                                  12.horizontalSpace,
                                  Expanded(
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
                                              state: controller
                                                  .weatherForecastState.value,
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
                                                                    ?.clusterWeatherIconToLocalAsset ??
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
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            const Text("Made with love, firman <3")
                          ],
                        ),
                      ),
                      if (controller.isCityInputShown.value)
                        Positioned(
                          top: 80,
                          left: 50,
                          right: 50,
                          child: Container(
                            width: Get.width / 1.7,
                            height: Get.height / 3,
                            decoration: BoxDecoration(
                              color: const Color(0xFF4A3C7A),
                              borderRadius: BorderRadius.circular(16.r),
                              border: Border.all(color: Colors.grey.shade700),
                            ),
                            child: Column(
                              children: [
                                TextField(
                                  controller: controller.cityNameController,
                                  onChanged: (value) {
                                    if (value.isNotEmpty) {
                                      controller.pagingController.refresh();
                                    } else {
                                      controller.setCityListStateNull();
                                    }
                                  },
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      focusedErrorBorder: InputBorder.none,
                                      prefixIcon: const Icon(
                                        Icons.search,
                                        size: 16,
                                        color: Colors.white,
                                      ),
                                      hintText: "cari nama kota",
                                      hintStyle: TextStyle(
                                          color: Colors.grey.shade600),
                                      contentPadding: const EdgeInsets.all(8)),
                                  cursorColor: Colors.white,
                                ),
                                Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Colors.grey.shade700,
                                ),
                                Expanded(
                                  child: PagedListView.separated(
                                    pagingController:
                                        controller.pagingController,

                                    // padding: EdgeInsets.symmetric(vertical: 12),
                                    separatorBuilder: (context, index) =>
                                        Divider(
                                      height: 1,
                                      thickness: 1,
                                      color: Colors.grey.shade700,
                                    ),
                                    builderDelegate:
                                        PagedChildBuilderDelegate<CityData>(
                                      itemBuilder: (context, item, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            controller
                                                .setIsCityInputShown(false);
                                            controller.cityNameController
                                                .clear();
                                            controller.setSelectedCity(item.name
                                                    ?.replaceAll(
                                                        "kabupaten", "") ??
                                                "");
                                            controller
                                                .setLocationFromCityString(
                                              onSuccess: () {
                                                controller.getCurrentWeather();
                                                controller.getWeatherForecast();
                                              },
                                            );
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(item.name?.replaceAll("KABUPATEN", "") ?? ""),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                    ],
                  );
                },
                failure: (error) {
                  return Column(
                    children: [
                      const Text("Error Getting Weather Data, try again"),
                      ElevatedButton(
                          onPressed: () {
                            controller.onInit();
                          },
                          child: const Text("Try Again"))
                    ],
                  );
                },
                loading: () {
                  return BasicShimmerContainer(
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        24.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ShimmerCard(
                              width: Get.width / 2,
                              height: 20,
                            ),
                            4.horizontalSpace,
                            const Icon(
                              Iconsax.arrow_down_1,
                              color: Colors.white,
                            )
                          ],
                        ),
                        SizedBox(
                          width: Get.width,
                          height: Get.width,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Table(
                            children: const [
                              TableRow(children: [
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.bottom,
                                  child: ShimmerCard(
                                    height: 150,
                                    width: 150,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [],
                                ),
                              ]),
                            ],
                          ),
                        ),
                        12.verticalSpace,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 30,
                                child: Container(
                                  height: 128,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(16.r),
                                  ),
                                  padding: const EdgeInsets.all(12),
                                ),
                              ),
                              12.horizontalSpace,
                              Expanded(
                                flex: 75,
                                child: Container(
                                  height: 128,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(16.r),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Text("Made with love, firman <3")
                      ],
                    ),
                  );
                },
              )),
            );
          });
        });
  }
}
