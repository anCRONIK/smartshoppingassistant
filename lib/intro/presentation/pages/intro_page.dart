import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_slider/intro_slider.dart';

import '../../../intro/domain/repositories/intro_repository.dart';
import '../../../routing.dart';
import '../widgets/intro_slide1.dart';
import '../widgets/intro_slide2.dart';

class IntroPage extends StatelessWidget {
  //TODO create intro
  @override
  Widget build(BuildContext context) {
    void onDonePress() {
      Get.find<IntroRepository>().changeToNotBeShownAgain();
      Get.offNamed(AppRoutes.ROOT);
    }

    Widget renderNextBtn() {
      return Icon(
        Icons.navigate_next,
      );
    }

    Widget renderDoneBtn() {
      return Icon(
        Icons.done,
      );
    }

    Widget renderSkipBtn() {
      return Icon(
        Icons.skip_next,
      );
    }

    ButtonStyle myButtonStyle() {
      return ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
        backgroundColor: MaterialStateProperty.all<Color>(Color(0x33F3B4BA)),
        overlayColor: MaterialStateProperty.all<Color>(Color(0x33FFA8B0)),
      );
    }

    return IntroSlider(
      slides: [introSlide1, introSlide2],

      renderSkipBtn: renderSkipBtn(),
      skipButtonStyle: myButtonStyle(),

      renderNextBtn: renderNextBtn(),
      nextButtonStyle: myButtonStyle(),

      renderDoneBtn: renderDoneBtn(),
      onDonePress: onDonePress,
      doneButtonStyle: myButtonStyle(),

      // colorDot: const Color(0x33FFA8B0),
      // colorActiveDot: const Color(0xffFFA8B0),
      // sizeDot: 13.0,

      backgroundColorAllSlides: Colors.grey,
    );
  }
}
