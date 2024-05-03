
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app_master/presentation/main/view/page/main_page.dart';
import 'package:weather_app_master/routes/routes.dart';

import 'constant/constant.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return ScreenUtilInit(
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: 'Otobee App Mitra V2',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: true,
              applyElevationOverlayColor: false,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              indicatorColor: primaryColor,
              highlightColor: Colors.grey,
              primaryColor: primaryColor,
              primaryColorDark: primaryColor,
              colorScheme: ColorScheme.fromSwatch().copyWith(
                  primary: primaryColor, secondary: secondaryColor),
              primaryTextTheme: GoogleFonts.robotoTextTheme(
                Get.textTheme.apply(
                    bodyColor: Colors.white, displayColor: Colors.white),
              ),
              textTheme: GoogleFonts.robotoTextTheme(
                Get.textTheme.apply(
                    bodyColor: Colors.white, displayColor: Colors.white),
              ),
              appBarTheme: AppBarTheme(
                centerTitle: true,
                toolbarHeight: 72,
                titleTextStyle: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                elevation: 1,
                // toolbarHeight: 56,
                backgroundColor: primaryColor,),
            ),
            getPages: GetXRoute.routes,
            initialRoute: MainPage.routeName,
            builder: (context, child) => MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
              child: child!,
            ),
          );
        });
  }
}
