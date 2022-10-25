import 'package:flutter/material.dart';

class MyTextModel {
  final String text;
  final FontWeight fontWeight;
  final Color color;
  MyTextModel({
    required this.text,
    required this.color,
    required this.fontWeight,
  });
}
  List<MyTextModel> myTextModel = [
    MyTextModel(
      text: "MATERIAL",
      color: Colors.black,
      fontWeight: FontWeight.w700,
    ),
    MyTextModel(
      text: "Lace",
      color: Color(0xffFE2550),
      fontWeight: FontWeight.w700,
    ),
    MyTextModel(
      text: "Ankara",
      color: Color(0xff212224),
      fontWeight: FontWeight.w400,
    ),
    MyTextModel(
      text: "Guinea",
      color: Color(0xff212224),
      fontWeight: FontWeight.w400,
    ),
    MyTextModel(
      text: "Linen",
      color: Color(0xff212224),
      fontWeight: FontWeight.w400,
    ),
    MyTextModel(
      text: "Silk",
      color: Color(0xff212224),
      fontWeight: FontWeight.w400,
    ),
    MyTextModel(
      text: "Wool",
      color: Color(0xff212224),
      fontWeight: FontWeight.w400,
    ),
    MyTextModel(
      text: "Cotten",
      color: Color(0xff212224),
      fontWeight: FontWeight.w400,
    ),
  ];
