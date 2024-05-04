import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app_master/constant/constant.dart';
import 'package:weather_app_master/presentation/main/controller/main_controller.dart';
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
                                  child: Icon(
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
                                        SizedBox(
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
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 0.7,
                                                ),
                                              ),
                                              Text(
                                                "Feels like: ${weatherData.main?.feelsLike?.toStringAsFixed(0) ?? "-"}\u00B0",
                                                style: TextStyle(
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
                                      padding: EdgeInsets.all(12),
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
                                            padding: EdgeInsets.symmetric(
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
                                                  padding: EdgeInsets.all(12),
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
                                                          EdgeInsets.all(8),
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
                                                  padding: EdgeInsets.all(12),
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
                                                          EdgeInsets.all(8),
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
                            Spacer(),
                            Text("Made with love, firman <3")
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
                              color: Color(0xFF4A3C7A),
                              borderRadius: BorderRadius.circular(16.r),
                              border: Border.all(color: Colors.grey.shade700),
                            ),
                            child: Column(
                              children: [
                                TextField(
                                  controller: controller.cityNameController,
                                  onChanged: (value) {
                                    if (value.isNotEmpty) {
                                      controller.getCityListByKeyword();
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
                                      prefixIcon: Icon(
                                        Icons.search,
                                        size: 16,
                                        color: Colors.white,
                                      ),
                                      hintText: "cari nama kota",
                                      hintStyle: TextStyle(
                                          color: Colors.grey.shade600),
                                      contentPadding: EdgeInsets.all(8)),
                                  cursorColor: Colors.white,
                                ),
                                Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Colors.grey.shade700,
                                ),
                                controller.cityListState.value != null
                                    ? LoaderStateContainer(
                                        state:
                                            controller.cityListState.value!,
                                        success: (data) {
                                          final cityListData =
                                              data.value.data;

                                          return Expanded(
                                            child: ListView.separated(
                                                itemBuilder: (context, index) {
                                                  return GestureDetector(
                                                    onTap: () {
                                                      controller
                                                          .setIsCityInputShown(
                                                              false);
                                                      controller
                                                          .cityNameController
                                                          .clear();
                                                      controller.setSelectedCity(
                                                          cityListData?[index]
                                                                  .name
                                                                  ?.replaceAll(
                                                                      "kabupaten",
                                                                      "") ??
                                                              "");
                                                      controller
                                                          .setLocationFromCityString(
                                                        onSuccess: () {
                                                          controller
                                                              .getCurrentWeather();
                                                          controller
                                                              .getWeatherForecast();
                                                        },
                                                      );
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                          cityListData?[index]
                                                                  .name ??
                                                              ""),
                                                    ),
                                                  );
                                                },
                                                // padding: EdgeInsets.symmetric(vertical: 12),
                                                separatorBuilder:
                                                    (context, index) => Divider(
                                                          height: 1,
                                                          thickness: 1,
                                                          color: Colors
                                                              .grey.shade700,
                                                        ),
                                                itemCount:
                                                    cityListData?.length ?? 0),
                                          );
                                        },
                                        loading: () {
                                          return Expanded(
                                            child: Column(
                                              children: [
                                                Spacer(),
                                                SizedBox(
                                                  height: 20,
                                                  width: 20,
                                                  child: CircularProgressIndicator(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Spacer()
                                              ],
                                            ),
                                          );
                                        },
                                        failure: (error) {
                                          return Text("Failed");
                                        },
                                      )
                                    : SizedBox.shrink()
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
                      Text("Error Getting Weather Data, try again"),
                      ElevatedButton(
                          onPressed: () {
                            controller.onInit();
                          },
                          child: Text("Try Again"))
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
                            Icon(
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
                            children: [
                              TableRow(children: [
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.bottom,
                                  child: ShimmerCard(height: 150,width: 150,),
                                ),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                  ],
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
                                  padding: EdgeInsets.all(12),
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
                        Spacer(),
                        Text("Made with love, firman <3")
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
