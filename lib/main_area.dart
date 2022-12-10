import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testprovider/providers/provider1.dart';

class MainArea extends StatelessWidget{
  const MainArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _provider1 = Provider1();
    return Consumer<Provider1>(
      builder: (context, model_provider1, child) {
        return Row(
          children: [
            Expanded(child: Container(height: 200, child: Center(child: Text("${model_provider1.variabl_1}")),)),
            Expanded(child: Container(height: 200, child: Center(child: Text("${model_provider1.variabl_2}")),)),
          ]);
      }
      );
  }
}