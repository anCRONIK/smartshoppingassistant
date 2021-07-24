import 'package:flutter/material.dart';
import 'package:intro_slider/slide_object.dart';

final introSlide2 = Slide(
  title: "SLIDE2",
  styleTitle: TextStyle(color: Color(0xff7FFFD4), fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
  description: "Some description",
  styleDescription: TextStyle(color: Color(0xff7FFFD4), fontSize: 20.0, fontStyle: FontStyle.italic, fontFamily: 'Raleway'),
  // backgroundImage: "images/city.jpeg",
  directionColorBegin: Alignment.topRight,
  directionColorEnd: Alignment.bottomLeft,
);
