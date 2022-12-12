import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testprovider/providers/provider2.dart';

class SliderBar extends StatelessWidget {
  SliderBar({Key? key}) : super(key: key);

  void changeSlider(double val) {
    final _provider2 = Provider2();
    _provider2.changeSlider(val);
    print(val.toInt());
  }

  void sliderIncBtn() {
    final _provider2 = Provider2();
    _provider2.incSliderVal();
    print('Slider vale ++: ${_provider2.sliderVal}');
  }

  void sliderDecBtn() {
    final _provider2 = Provider2();
    _provider2.decSliderVal();
    print('Slider vale --: ${_provider2.sliderVal}');
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
                min: 0,
                max: 10,
                divisions: 10,
                value: model_provider2.sliderVal,
                onChanged: changeSlider),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: sliderDecBtn, child: Text('-')),
                ElevatedButton(onPressed: sliderIncBtn, child: Text('+')),
              ],
            )
          ],
        ),
      );
    });
  }

  Type get newMethod => Slider;
}
