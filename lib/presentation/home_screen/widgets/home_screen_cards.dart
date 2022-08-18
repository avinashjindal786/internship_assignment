

import 'package:flutter/material.dart';
import 'package:flutter_assignment/config/theme/color.dart';
import 'package:flutter_assignment/config/theme/style.dart';
import 'package:flutter_assignment/presentation/home_screen/widgets/home_appbar.dart';
import 'package:flutter_svg/flutter_svg.dart';





class OfferWidget extends StatelessWidget {
  const OfferWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 345,
      width: 304,
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xFFEEEEEE),width: 1),
          boxShadow: const [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.08),offset: Offset(0,4),blurRadius: 10,spreadRadius: 0)]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xFFEEEEEE),
            ),
          ),
          const SizedBox(height: 15,),
          Padding(padding: const EdgeInsets.only(left: 15),child: Text("A rewarding Celebration",style: gray_18_600,),),const SizedBox(height: 10,),
          Padding(padding: const EdgeInsets.only(left: 15),child: Text("Win rewards from Citizen,peter \nengland, and More",style: gray_15_400,),),
          const SizedBox(height: 10,),
          Center(
            child: Container(
              width: 272,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFADB4E2),width: 1),
              ),child: Center(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Explore rewards",style: TextStyle(color: Color(0xFF303F9F),fontSize: 16,fontWeight: FontWeight.w500,fontFamily: "Popine"),),
                SizedBox(width: 15,),
                Icon(Icons.add,color: Color(0xFF303F9F),size: 20,)
              ],
            ),),
            ),
          )
        ],
      ),
    );
  }
}
class BlogWidget extends StatelessWidget {
  const BlogWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 312,
      width: 312,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFEEEEEE),width: 1),

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.only(left: 15,right: 10,top: 20),child: Container(
            height: 135,width: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xFFEEEEEE),
            ),
          ),),
          const SizedBox(height: 15,),
          Padding(padding: EdgeInsets.only(left: 15,right: 15),child: Text("4 methods of calculating Network,Which no one will tell you ",style: gray_18_600,),),
          const Padding(padding: EdgeInsets.only(top: 10,left: 15,right: 15),child: Text("Read Time: 8 mins",style:  TextStyle(color: Color(0xFF303F9F),fontSize: 12,fontWeight: FontWeight.w500,fontFamily: "Popine"),),),
          const SizedBox(height: 10,),
          Padding(padding: const EdgeInsets.only(left: 15,right: 20),child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children:  [
                  const CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage("assets/Ellipse 30.png"),
                  ),
                  SizedBox(width: 10,),
                  Text("Ann Korkowski ",style: gray_12_400,)
                ],
              ),
              Text("08/09/2022",style: gray_12_400,)
            ],
          ),)
        ],
      ),
    );
  }
}

class TaskWidget extends StatelessWidget {
  const TaskWidget({required this.color,
    Key? key,required this.number,required this.des,required this.image,required this.heading,
  }) : super(key: key);

  final String image;
  final String number;
  final String heading;
  final String des;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 152,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color(0xFFEEEEEE),width: 1),
          color: whiteColor
      ),
      child: Stack(
        children: [
          Positioned(
              top: -12,
              left: -12,
              child: CircleAvatar(radius: 45,backgroundColor: color,child: Image(image: AssetImage(image),width: 35,height: 35,),)),
          Positioned(
            top: 12,
            right: 12,
            child: SvgPicture.asset(number,width: 35,height: 35,),),
          Positioned(
              bottom: 10,
              left: 8,
              right: 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(heading,style: gray_15_500,),
                  Text(des,style: gray_12_400,textAlign: TextAlign.center,)
                ],
              ))
        ],
      ),
    );
  }
}