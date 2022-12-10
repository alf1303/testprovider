import 'package:flutter/material.dart';

class Provider2 extends ChangeNotifier{

  ///////// Initializing provider, using singleton factory pattern ///////////
  static final Provider2 _instance = Provider2._internal();
  factory Provider2() {
    return _instance;
  }
  Provider2._internal();
  ///////////////////////////////////////////////////////////////////////

/////// State here (vars) ///////
  int counter = 0;
  String variabl = "default";

////// Functions for changing state ///////////
changeVariabl(String text) {
  variabl = "${text}_$counter";
  counter++;
  notifyAll();
}

//call to notify listeners and apply new state
  notifyAll() {
    notifyListeners();
  }

}

