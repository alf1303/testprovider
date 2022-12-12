import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testprovider/providers/provider2.dart';

class SliderBar extends StatelessWidget {
  SliderBar({Key? key}) : super(key: key);

  void changeSlider(double val) {
    print(val);
  }

  @override
  Widget build(BuildContext context) {
    final _provider2 = Provider2();
    return Consumer<Provider2>(builder: (context, model_provider2, child) {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Text(model_provider2.variable),
            Slider(
                min: 1,
                max: 10,
                divisions: 2,
                value: 4,
                onChanged: changeSlider),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('-')),
                ElevatedButton(onPressed: () {}, child: Text('+')),
              ],
            )
          ],
        ),
      );
    });
  }

  Type get newMethod => Slider;
}
