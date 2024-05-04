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
              body: SafeArea(
                  child: LoaderStateContainer(
                state: controller.currentWeatherState.value,
                success: (data) {
                  return Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      24.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            controller.selectedCityString.value,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20.sp, fontWeight: FontWeight.w600),
                          ),
                          4.horizontalSpace,
                          Icon(
                            Iconsax.arrow_down_1,
                            color: Colors.white,
                          )
                        ],
                      ),
                      LottieBuilder.asset(
                        "assets/lottie/weather/night_bright.json",
                        width: Get.width,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Table(
                          children: [
                            TableRow(children: [
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.bottom,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    "54\u00B0",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 200.sp),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(
                                    height: 60,
                                  ),
                                  SizedBox(
                                    height: 60,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Thunderstorm",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.7,
                                          ),
                                        ),
                                        Text(
                                          "Feels like: 60\u00B0",
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
                                      "assets/lottie/weather/night_bright.json",
                                      width: Get.width,
                                    ),
                                    AutoSizeText(
                                      "50\u00B0/60\u00B0",
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
                                  borderRadius: BorderRadius.circular(16.r),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    12.verticalSpace,
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 12),
                                      child: AutoSizeText(
                                        "5-DAY FORECAST",
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        // shrinkWrap: true,
                                        padding: EdgeInsets.all(12),
                                        itemBuilder: (context, index) {
                                          return Container(
                                            width: 60,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey
                                                      .withOpacity(0.3)),
                                              color:
                                                  Colors.grey.withOpacity(0.1),
                                              borderRadius:
                                                  BorderRadius.circular(12.r),
                                            ),
                                            padding: EdgeInsets.all(8),
                                            child: Column(
                                              children: [
                                                LottieBuilder.asset(
                                                  "assets/lottie/weather/night_bright.json",
                                                ),
                                                Text(
                                                  "50\u00B0/60\u00B0",
                                                  style: TextStyle(
                                                    fontSize: 9.sp,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, index) =>
                                            10.horizontalSpace,
                                        itemCount: 5,
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
                  );
                },
                failure: (error) {
                  return Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      24.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            controller.selectedCityString.value,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20.sp, fontWeight: FontWeight.w600),
                          ),
                          4.horizontalSpace,
                          Icon(
                            Iconsax.arrow_down_1,
                            color: Colors.white,
                          )
                        ],
                      ),
                      LottieBuilder.asset(
                        "assets/lottie/weather/night_bright.json",
                        width: Get.width,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Table(
                          children: [
                            TableRow(children: [
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.bottom,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    "54\u00B0",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 200.sp),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(
                                    height: 60,
                                  ),
                                  SizedBox(
                                    height: 60,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Thunderstorm",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.7,
                                          ),
                                        ),
                                        Text(
                                          "Feels like: 60\u00B0",
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
                                      "assets/lottie/weather/night_bright.json",
                                      width: Get.width,
                                    ),
                                    AutoSizeText(
                                      "50\u00B0/60\u00B0",
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
                                  borderRadius: BorderRadius.circular(16.r),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    12.verticalSpace,
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 12),
                                      child: AutoSizeText(
                                        "5-DAY FORECAST",
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        // shrinkWrap: true,
                                        padding: EdgeInsets.all(12),
                                        itemBuilder: (context, index) {
                                          return Container(
                                            width: 60,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey
                                                      .withOpacity(0.3)),
                                              color:
                                                  Colors.grey.withOpacity(0.1),
                                              borderRadius:
                                                  BorderRadius.circular(12.r),
                                            ),
                                            padding: EdgeInsets.all(8),
                                            child: Column(
                                              children: [
                                                LottieBuilder.asset(
                                                  "assets/lottie/weather/night_bright.json",
                                                ),
                                                Text(
                                                  "50\u00B0/60\u00B0",
                                                  style: TextStyle(
                                                    fontSize: 9.sp,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, index) =>
                                            10.horizontalSpace,
                                        itemCount: 5,
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
                  );
                },
                loading: () {
                  return Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      24.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            controller.selectedCityString.value,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20.sp, fontWeight: FontWeight.w600),
                          ),
                          4.horizontalSpace,
                          Icon(
                            Iconsax.arrow_down_1,
                            color: Colors.white,
                          )
                        ],
                      ),
                      LottieBuilder.asset(
                        "assets/lottie/weather/night_bright.json",
                        width: Get.width,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Table(
                          children: [
                            TableRow(children: [
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.bottom,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    "54\u00B0",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 200.sp),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(
                                    height: 60,
                                  ),
                                  SizedBox(
                                    height: 60,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Thunderstorm",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.7,
                                          ),
                                        ),
                                        Text(
                                          "Feels like: 60\u00B0",
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
                                      "assets/lottie/weather/night_bright.json",
                                      width: Get.width,
                                    ),
                                    AutoSizeText(
                                      "50\u00B0/60\u00B0",
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
                                  borderRadius: BorderRadius.circular(16.r),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    12.verticalSpace,
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 12),
                                      child: AutoSizeText(
                                        "5-DAY FORECAST",
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        // shrinkWrap: true,
                                        padding: EdgeInsets.all(12),
                                        itemBuilder: (context, index) {
                                          return Container(
                                            width: 60,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey
                                                      .withOpacity(0.3)),
                                              color:
                                                  Colors.grey.withOpacity(0.1),
                                              borderRadius:
                                                  BorderRadius.circular(12.r),
                                            ),
                                            padding: EdgeInsets.all(8),
                                            child: Column(
                                              children: [
                                                LottieBuilder.asset(
                                                  "assets/lottie/weather/night_bright.json",
                                                ),
                                                Text(
                                                  "50\u00B0/60\u00B0",
                                                  style: TextStyle(
                                                    fontSize: 9.sp,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, index) =>
                                            10.horizontalSpace,
                                        itemCount: 5,
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
                  );
                },
              )),
            );
          });
        });
  }
}
