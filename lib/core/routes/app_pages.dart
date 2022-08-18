import 'package:flutter_assignment/presentation/bottom_nav_bar/view/bottom_nav_bar.dart';

import '../../presentation/home_screen/view/home_screen.dart';
import 'app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Paths.HOME,
      page: () => HomeScreen(),
    ),GetPage(
      name: Paths.BOTTOM,
      page: () => BottomNavBar(),
    ),
  ];
}
