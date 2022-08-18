
import 'package:flutter/material.dart';
import 'package:flutter_assignment/config/theme/color.dart';
import 'package:flutter_assignment/config/theme/style.dart';
import 'package:flutter_assignment/presentation/home_screen/controller/home_controller.dart';
import 'package:flutter_assignment/presentation/home_screen/widgets/add_money_widget.dart';
import 'package:flutter_assignment/presentation/home_screen/widgets/edit_text_widget.dart';
import 'package:flutter_assignment/presentation/home_screen/widgets/home_screen_cards.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../widgets/home_appbar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
    required this.controller,required this.categories,
    required GlobalKey<FormState> formKey,
    required this.amount,
    required this.date,
  }) : _formKey = formKey, super(key: key);

  final HomeController controller;
  final GlobalKey<FormState> _formKey;
  final TextEditingController amount;
  final TextEditingController date;
  final List<Widget> categories;
  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView(
      scrollDirection: Axis.vertical,
      children: [
        const SizedBox(height: 12,),
        Obx((){
          return controller.navigate.value ? Text("Your doing \ngreat keep it up.🤞",style: gray_20_500,): Text("Complete your\nnow KYC Now 😡",style: gray_20_500,);
        }),
        SizedBox(height: 18,),
        Container(
            height: 500,
            decoration: BoxDecoration(
                color: Color(0xFF303F9F),
                borderRadius: BorderRadius.circular(24),
                boxShadow: const [BoxShadow(offset: Offset(0,0),blurRadius: 16,spreadRadius: 0,color: Color.fromRGBO(0, 0, 0, 0.09))]
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(padding: EdgeInsets.only(left: 15),child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text("Total Spends",style: white_18_500,),
                      Obx((){
                        return controller.navigate.value ? Text("₹12,000",style: white_32_500,):Text("₹0",style: white_32_500,);
                      })
                    ],
                  ),),

                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("₹18,000",style: white_12_700,),
                      Text("- - - - - - - - - - - - - - - - - - - - - - - - - -",style: white_12_700,),
                      Text("budget",style: white_12_700,),
                    ],
                  ),
                  Obx((){
                    return controller.navigate.value ? Stack(
                      children: [
                        Positioned(
                          top:-2,
                          child: SvgPicture.asset("assets/Vector 325.svg"),),
                        Positioned(child: SvgPicture.asset("assets/Vector 324.svg",color: Color(0xFF303f9f)),)
                      ],
                    ) : const SizedBox(height: 120,);
                  }),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(child: Text("Jan month’s data",style: white_14_500,),),
                  Obx((){
                    return Padding(padding: EdgeInsets.all(15),
                      child: controller.navigate.value ?WithoutGraphCard(formKey: _formKey, amount: amount, date: date) : GraphCard(controller: controller),);
                  })
                ],
              ),
            )
        ),
        const SizedBox(height: 32,),
        Text("Categories",style: gray_18_500,),
        const SizedBox(height: 12,),
        Row(
          children: categories,
        ),
        const SizedBox(height: 42,),
        Text("Task",style: gray_18_500,),
        const SizedBox(height: 18,),
        const TaskWidgetList(),
        const SizedBox(height: 42,),
        Text("Offers & Rewards",style: gray_18_500,),
        const SizedBox(height: 18,),
        const OfferWidgetList(),
        const SizedBox(height: 42,),
        Text("Blogs",style: gray_18_500,),
        const SizedBox(height: 18,),
        const BlogWidgetList(),
        const SizedBox(height: 18,),
      ],
    ));
  }
}


