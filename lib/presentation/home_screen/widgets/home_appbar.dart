
import 'package:flutter/material.dart';
import 'package:flutter_assignment/config/theme/color.dart';
import 'package:flutter_assignment/config/theme/style.dart';
import 'package:flutter_assignment/presentation/home_screen/controller/home_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    Key? key,required this.name,required this.textName,
  }) : super(key: key);
  final String name;
  final String textName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 31,
          backgroundColor: const Color(0xFFEEEEEE),
          child: CircleAvatar(
            backgroundColor: whiteColor,
            radius: 30,child: SvgPicture.asset(name,width: 25,height: 25,),),

        ),
        const SizedBox(height: 15,),
        Text(textName,style: gray_12_500,)
      ],
    );
  }
}

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({required this.controller,
    Key? key,
  }) : super(key: key);
  final HomeController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 64,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color.fromRGBO(238,238, 238, 1),width: 1))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage("assets/Ellipse 30.png"),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Welcome back,",style: TextStyle(fontSize: 14,fontFamily: "Popine",fontWeight: FontWeight.w500),),
                  Obx((){
                    return controller.navigate.value ? const Text("Ankur",style: TextStyle(fontSize: 18,fontFamily: "Popine",fontWeight: FontWeight.w600),) : const Text("Waseem Akram",style: TextStyle(fontSize: 18,fontFamily: "Popine",fontWeight: FontWeight.w600),);})
                ],
              ),
            ],
          ),
          Padding(padding: const EdgeInsets.only(right: 0),child:  SvgPicture.asset("assets/alpha.svg"),),
        ],
      ),
    );
  }
}

class GraphCard extends StatelessWidget {
  const GraphCard({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Color(0xFFEEEEEE),width: 1)
      ),
      child: Stack(
        children:  [
          Padding(padding: EdgeInsets.only(top: 14,left: 15),child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pending KYC",style: gray_18_600,),
              SizedBox(height: 5,),
              Text("Lorem Ipsum is simply dummy \ntext of the printing and typesetting\nindustry. Lorem",style: gray_12_400,),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  controller.navigate.value = true;
                },
                child: Container(
                  width: 146,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xFFE13B30),
                      borderRadius: BorderRadius.circular(84)


                  ),
                  child: Center(child: Text("Complete Now",style: white_14_600,),),
                ),
              )
            ],
          ),),
          const Positioned(
              right: -30,
              top: -35,
              child: CircleAvatar(radius: 75,backgroundColor: Color.fromRGBO(225, 59, 48, 0.1),child: Image(image: AssetImage("assets/key.png"),width: 55,height: 55,),)),

        ],
      ),
    );
  }
}