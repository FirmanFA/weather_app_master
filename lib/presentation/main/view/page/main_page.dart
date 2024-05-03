import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app_master/constant/constant.dart';

class MainPage extends StatelessWidget {
  static const routeName = "/main-page";
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        height: Get.height,
      ),
    );
  }
}
