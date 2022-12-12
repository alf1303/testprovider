import 'package:flutter/material.dart';
import 'package:testprovider/providers/provider1.dart';
// import 'package:testprovider/providers/provider2.dart';

class ControlBar extends StatelessWidget{
  ControlBar({Key? key}) : super(key: key);

  final _provider1 = Provider1();
  // final _provider2 = Provider2();

  onPressed1() {
    print("But1 pressed");
    _provider1.changeVariabl_1("Pressed_1");
  }

  onPressed2() {
    _provider1.changeVariabl_2("Pressed_2");
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      ElevatedButton(onPressed: onPressed1, child: Text("Button 1")),
      ElevatedButton(onPressed: onPressed2, child: Text("Button 2"))
    ],));
  }
}