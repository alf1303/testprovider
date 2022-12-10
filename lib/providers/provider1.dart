import 'package:flutter/material.dart';

class Provider1 extends ChangeNotifier{

  ///////// Initializing provider, using singleton factory pattern ///////////
  static final Provider1 _instance = Provider1._internal();
  factory Provider1() {
    return _instance;
  }
  Provider1._internal();
  ///////////////////////////////////////////////////////////////////////

/////// State here (vars) ///////
  int counter_1 = 0;
  int counter_2 = 100;
  String variabl_1 = "default";
  String variabl_2 = "default";

////// Functions for changing state ///////////
changeVariabl_1(String text) {
  counter_1++;
  variabl_1 = "${text}_$counter_1";
  notifyAll();
}

changeVariabl_2(String text) {
  counter_2 = counter_2 + 100;
  variabl_2 = "${text}_$counter_2";
  notifyAll();
}

//call to notify listeners and apply new state
  notifyAll() {
    notifyListeners();
  }

}

