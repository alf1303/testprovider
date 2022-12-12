import 'package:flutter/material.dart';

class Provider2 extends ChangeNotifier {
  ///////// Initializing provider, using singleton factory pattern ///////////
  static final Provider2 _instance = Provider2._internal();
  factory Provider2() {
    return _instance;
  }
  Provider2._internal();
  ///////////////////////////////////////////////////////////////////////

/////// State here (vars) ///////
  int counter = 0;
  String variable = "Sider value: ";
  double sliderVal = 4;

////// Functions for changing state ///////////
  changeVariabl(String text) {
    variable = "${text}_$counter";
    counter++;
    notifyAll();
  }

  changeSlider(double val) {
    sliderVal = val;
    notifyAll();
  }

  incSliderVal() {
    sliderVal++;
    if (sliderVal > 10) {
      sliderVal = 10;
      return;
    }
    notifyAll();
  }

  decSliderVal() {
    sliderVal--;
    if (sliderVal < 0) {
      sliderVal = 0;
      return;
    }
    notifyAll();
  }

//call to notify listeners and apply new state
  notifyAll() {
    notifyListeners();
  }
}
