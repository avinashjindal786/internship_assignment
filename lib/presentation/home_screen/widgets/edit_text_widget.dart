import 'package:flutter/material.dart';

class EditTextWidget extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  EditTextWidget({
    required this.name,
    required this.strName,
    required this.myController,
    this.height = 40,
    this.maxLines = 1,
    this.enable = false,
    this.color = Colors.white,
    required this.formkey,
    required this.vadlidation,
  });

  final String name;
  final bool enable;
  final TextEditingController myController;
  final String? Function(String?)? strName;
  final double height;
  final int maxLines;
  final Key formkey;
  Color color;
  final String? Function(String?)? vadlidation;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(

          textAlignVertical: TextAlignVertical.center,
          textAlign: TextAlign.start,
          textInputAction: TextInputAction.go,
          controller: myController,
          onChanged: strName,
          //obscureText: true,
          textCapitalization: TextCapitalization.sentences,
          validator: vadlidation,
          minLines: 1,
          maxLines: maxLines,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            labelText: name,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            errorStyle: const TextStyle(
              fontSize: 8.0,
            ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide:  const BorderSide(
                color: Color(0xFF303F9F),
                width: 1,
              ),
            ),
            labelStyle: TextStyle(fontSize: 20,color: Color(0xFF303F9F)),
            fillColor: color,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide:  const BorderSide(
                color: Color(0xFF303F9F),
                width: 1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class EditTextWidgetSimple extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  EditTextWidgetSimple({
    required this.name,
    required this.strName,
    required this.myController,
    this.height = 40,
    this.maxLines = 1,
    this.enable = false,
    this.color = Colors.white,
    required this.formkey,
    required this.vadlidation,
  });

  final String name;
  final bool enable;
  final TextEditingController myController;
  final String? Function(String?)? strName;
  final double height;
  final int maxLines;
  final Key formkey;
  Color color;
  final String? Function(String?)? vadlidation;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(

          textAlignVertical: TextAlignVertical.center,
          textAlign: TextAlign.start,
          textInputAction: TextInputAction.go,
          controller: myController,
          onChanged: strName,
          //obscureText: true,
          textCapitalization: TextCapitalization.sentences,
          validator: vadlidation,
          minLines: 1,
          maxLines: maxLines,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            errorStyle: const TextStyle(
              fontSize: 8.0,
            ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide:  const BorderSide(
                color: Color(0xFFE8ECF4),
                width: 1,
              ),
            ),
            fillColor: color,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide:  const BorderSide(
                color: Color(0xFFE8ECF4),
                width: 1,
              ),
            ),
            hintText:  name,
            hintStyle: TextStyle(
                color: const Color(0xFF1D1D1D).withOpacity(0.5),
                fontFamily: 'Aleo',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                fontStyle: FontStyle.normal),
          ),
        ),
      ],
    );
  }
}