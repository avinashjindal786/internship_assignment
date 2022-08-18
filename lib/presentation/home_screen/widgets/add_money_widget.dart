
import 'package:flutter/material.dart';
import 'package:flutter_assignment/config/theme/color.dart';
import 'package:flutter_assignment/config/theme/style.dart';
import 'package:flutter_assignment/presentation/home_screen/widgets/edit_text_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import 'home_screen_cards.dart';


class AddMoneyWidget extends StatelessWidget {
  const AddMoneyWidget({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.amount,
    required this.date,
  }) : _formKey = formKey, super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController amount;
  final TextEditingController date;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.7,

        child: Padding(
          padding: EdgeInsets.only(top: 20,left: 20,right: 10),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(child: Icon(Icons.arrow_back),onTap: (){Get.back();},),
                    SizedBox(width: 10,),
                    Text("Adding Transaction",style: gray_15_500,),
                  ],
                ),
                SizedBox(height: 20,),
                Divider(color: grayColor,),
                Expanded(child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    const SizedBox(height: 20,),
                    Text("Enter Spend amount",style: gray_15_500,),
                    const SizedBox(height: 10,),
                    Text("Enter the amount that you have spend without using zero balance. ",style: gray_15_400,),
                    const SizedBox(height: 15,),
                    EditTextWidget(name: "Amount", strName: "".obs, myController: amount, formkey: _formKey, vadlidation: null),
                    const SizedBox(height: 15,),
                    Text("Enter Date",style: gray_15_500,),
                    const SizedBox(height: 15,),
                    EditTextWidgetSimple(name: "", strName: "".obs, myController: date, formkey: _formKey, vadlidation: null),
                    const SizedBox(height: 15,),
                    Text("Mode of payment",style: gray_15_500,),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 110,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            border: Border.all(color: Color(0xFF303F9F),width: 1),
                          ),
                          child: Center(
                            child: Text("UPI",style: blue_16_500,),
                          ),
                        ),Container(
                          width: 110,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            border: Border.all(color: Color(0xFF303F9F),width: 1),
                          ),
                          child: Center(
                            child: Text("Card",style: blue_16_500,),
                          ),
                        ),Container(
                          width: 110,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            border: Border.all(color: Color(0xFF303F9F),width: 1),
                          ),
                          child: Center(
                            child: Text("Cash",style: blue_16_500,),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25,),
                    Text("Quick Note",style: gray_15_500,),
                    SizedBox(height: 15,),
                    EditTextWidgetSimple(name: "", strName: "".obs, myController: date, formkey: _formKey, vadlidation: null),
                    SizedBox(height: 25,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color:  Color(0xFF303F9F),
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Color(0xFF303F9F),width: 1),
                      ),
                      child:Center(
                        child: Text("Save",style: whiteColor_18_500,),
                      ),
                    ),
                    const SizedBox(height: 18,),
                  ],
                ))
              ],
            ),
          ),
        )
    );
  }
}

class BlogWidgetList extends StatelessWidget {
  const BlogWidgetList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 345,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          BlogWidget(),
          SizedBox(width: 20,), BlogWidget(),
          SizedBox(width: 20,) ,BlogWidget(),
          SizedBox(width: 20,)
        ],
      ),
    );
  }
}

class OfferWidgetList extends StatelessWidget {
  const OfferWidgetList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 345,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          OfferWidget(),
          SizedBox(width: 20,), OfferWidget(),
          SizedBox(width: 20,) ,OfferWidget(),
          SizedBox(width: 20,)
        ],
      ),
    );
  }
}

class TaskWidgetList extends StatelessWidget {
  const TaskWidgetList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          TaskWidget(image: "assets/key.png",number: "assets/01.svg",heading: "Complete KYC",des: "Create category and\n earn ₹25",color: Color(0xFFF6EDD2),),
          SizedBox(width: 15,),
          TaskWidget(image: "assets/burger.png",number: "assets/02.svg",heading: "Create category",des: "Create category and\n earn ₹25",color: Color(0xFFFBE8D8),),
          SizedBox(width: 15,),
          TaskWidget(image: "assets/emoji.png",number: "assets/03.svg",heading: "Set limit to categ",des: "Create category and\n earn ₹25",color: Color(0xFFFBEBCE),),
          SizedBox(width: 15,),
          TaskWidget(image: "assets/laptop.png",number: "assets/04.svg",heading: "Add apps categ",des: "Create category and\n earn ₹25",color: Color(0xFFD3D6F1),),
          SizedBox(width: 15,),
          TaskWidget(image: "assets/dollor.png",number: "assets/05.svg",heading: "Make one taxn",des: "Create category and\n earn ₹25",color: Color(0xFFF7F0DC),),
          SizedBox(width: 15,),
          TaskWidget(image: "assets/money.png",number: "assets/06.svg",heading: "Make 5 taxn",des: "Create category and\n earn ₹25",color: Color(0xFFEEECE2),),

        ],
      ),
    );
  }
}



class WithoutGraphCard extends StatelessWidget {
  const WithoutGraphCard({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.amount,
    required this.date,
  }) : _formKey = formKey, super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController amount;
  final TextEditingController date;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                  width: 144,
                  height: 79,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: whiteColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 5,top: 15,right: 5),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset("assets/Frame 427321589.svg"),
                            Text("Projected Saving",style: gray_12_400,),

                          ],
                        ),
                        const SizedBox(height: 5,),
                        Text("₹2,000",style: gray_18_600,)
                      ],
                    ),
                  )
              ),
              SizedBox(height: 10,),
              Container(
                  width: 144,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: whiteColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 5,top: 15,right: 5),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset("assets/alpha2.svg"),
                            Text("HIghest Spent",style: gray_12_400,),

                          ],
                        ),
                        SizedBox(height: 5,),
                        Text("₹2,000",style: gray_18_600,)
                      ],
                    ),
                  )
              ),
            ],
          ),
          SizedBox(width: 10,),
          Container(
              width: 170,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: whiteColor,
                border: Border.all(color: whiteColor,width: 1),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 15,left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Card balance",style: gray_15_400,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("₹1,500",style: gray_24_600,),
                        SizedBox(width: 15,),
                        Container(
                          width: 48,
                          height: 17,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              color: Color.fromRGBO(225, 59, 48, 0.26)
                          ),
                          child: const Center(
                            child: Text("Low bal",style: TextStyle(color: Color(0xFFE13B30),fontSize: 10,fontFamily: "Popine",fontWeight: FontWeight.w500),),
                          ),
                        ),

                      ],),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Container(
                        width: 75,height: 75,
                        child: FloatingActionButton(

                          onPressed: (){
                            showModalBottomSheet<void>(
                              // context and builder are
                              // required properties in this widget
                              context: context,
                              builder: (BuildContext context) {
                                // we set up a container inside which
                                // we create center column and display text

                                // Returning SizedBox instead of a Container
                                return AddMoneyWidget(formKey: _formKey, amount: amount, date: date);
                              },
                            );

                          },backgroundColor: Color(0xFF303F9F),child: Text("Add",style: white_20_600,),),
                      ),
                    )
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}


