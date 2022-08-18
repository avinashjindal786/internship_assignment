import 'package:get/get.dart';

class BottomNavBarController extends GetxController {
  var tabIndex = 0.obs;

  @override
  void onInit() {
    // _homeController.fetchGroup();
    super.onInit();
  }

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }
}
