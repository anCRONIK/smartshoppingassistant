import 'package:flutter/material.dart';
import 'package:intro_slider/slide_object.dart';

final introSlide1 = Slide(
  title: "SLIDE1",
  maxLineTitle: 2,
  styleTitle: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
  description: "Some description",
  styleDescription: TextStyle(color: Colors.white, fontSize: 20.0, fontStyle: FontStyle.italic, fontFamily: 'Raleway'),
  marginDescription: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 70.0),
  centerWidget: Text("Replace this with a custom widget", style: TextStyle(color: Colors.white)),
  // backgroundImage: "images/forest.png",
  directionColorBegin: Alignment.topLeft,
  directionColorEnd: Alignment.bottomRight,
  onCenterItemPress: () {},
);
