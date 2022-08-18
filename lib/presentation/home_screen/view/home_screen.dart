import 'package:flutter/material.dart';
import 'package:flutter_assignment/config/theme/color.dart';
import 'package:flutter_assignment/config/theme/style.dart';
import 'package:flutter_assignment/presentation/home_screen/controller/home_controller.dart';
import 'package:flutter_assignment/presentation/home_screen/widgets/edit_text_widget.dart';
import 'package:flutter_assignment/presentation/home_screen/widgets/home_screen_body.dart';
import 'package:flutter_assignment/presentation/home_screen/widgets/home_screen_cards.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
    final HomeController controller = Get.put(HomeController());
    final TextEditingController amount = TextEditingController();
    final TextEditingController date = TextEditingController();
    final TextEditingController query = TextEditingController();
    final _formKey = GlobalKey<FormState>();

   List<Widget> categories = const [
     CategoriesWidget(name: "assets/cate1.svg",textName: "Food",),
     SizedBox(width: 20,),
     CategoriesWidget(name: "assets/cate2.svg",textName: "Pet"),
     SizedBox(width: 20,),
     CategoriesWidget(name: "assets/cate3.svg",textName: "Shopping"),SizedBox(width: 20,),
     CategoriesWidget(name: "assets/enter.svg",textName: "Entertainment"),

   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(padding: EdgeInsets.only(left: 15,right: 15),
          child: Stack(
                children: [
                  Column(
                    children: [

                      const SizedBox(height: 5,),
                      HomeAppBar(controller: controller,),
                      HomeBody(controller: controller, formKey: _formKey, amount: amount, date: date,categories: categories,)
                    ],
                  ),
                  Positioned(
                      bottom: 10,
                      left: 10,
                      right: 10,
                      child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: whiteColor,
                      boxShadow: [BoxShadow(offset: Offset(0,4),blurRadius: 40,spreadRadius: 0,color: Color.fromRGBO(0, 0, 0, 0.15))]
                    ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 20,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset("assets/Vector (2).svg",width: 22,height: 22,),
                              SvgPicture.asset("assets/Vector (3).svg",width: 20,height: 20,),
                              SvgPicture.asset("assets/Vector (4).svg",),
                              SvgPicture.asset("assets/Vector (5).svg",)
                            ],
                          ),
                        ),
                  ))
                ],
              )

        )
      ),
    );
  }
}






