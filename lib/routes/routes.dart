import 'package:get/get.dart';
import 'package:weather_app_master/presentation/main/view/page/main_page.dart';

class GetXRoute {
  static final List<GetPage> routes = [
    GetPage(
      name: MainPage.routeName,
      page: () => const MainPage(),
    ),
  ];
}
