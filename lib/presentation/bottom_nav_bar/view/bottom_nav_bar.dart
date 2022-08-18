import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/config/theme/color.dart';
import 'package:flutter_assignment/presentation/bottom_nav_bar/controller/controller.dart';
import 'package:flutter_assignment/presentation/home_screen/view/home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';



class BottomNavBar extends StatelessWidget {
  BottomNavBarController controller = Get.put(BottomNavBarController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0x00ffffff),

      extendBody: false,

      bottomNavigationBar: Obx(() => DotNavigationBar(

        onTap: controller.changeTabIndex,
        currentIndex: controller.tabIndex.value,
        items: [
          DotNavigationBarItem(
              icon: SvgPicture.asset("assets/Vector (2).svg",width: 22,height: 22,),
              selectedColor: Color(0xFF303F9F),),
          DotNavigationBarItem(
              icon: SvgPicture.asset("assets/Vector (3).svg",width: 22,height: 22,),
              unselectedColor: grayColor,
              selectedColor: Color(0xFF303F9F)),
          DotNavigationBarItem(
              icon: SvgPicture.asset("assets/Vector (4).svg",),unselectedColor: grayColor,
              selectedColor: Color(0xFF303F9F)),
          DotNavigationBarItem(
              icon: SvgPicture.asset("assets/Vector (5).svg",),unselectedColor: grayColor,

              selectedColor: Color(0xFF303F9F)),
        ],
      )),
      body: Obx(() => IndexedStack(
        index: controller.tabIndex.value,
        children: [HomeScreen(), Container(), Container()],
      )),
    );
  }
}
