import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _stateCheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider && Checks '),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 800,
                value: _sliderValue,
                activeColor: AppTheme.primary,
                divisions: 10,
                onChanged: _stateCheck
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),
            Text(_sliderValue.round().toString()),
            Checkbox(
              value: _stateCheck,
              onChanged: (value) {
                _stateCheck = value ?? true;
                setState(() {});
              },
            ),
            CheckboxListTile(
              title: Text('Estado de barra'),
              activeColor: AppTheme.primary,
              value: _stateCheck,
              onChanged: (value) {
                _stateCheck = value ?? true;
                setState(() {});
              },
            ),
            SwitchListTile.adaptive(
              activeColor: Colors.greenAccent,
              title: Text('Estado de barra'),
              value: _stateCheck,
              onChanged: (value) {
                _stateCheck = value ?? true;
                setState(() {});
              },
            ),
            Image(
              image: const NetworkImage(
                  'https://stickershop.line-scdn.net/stickershop/v1/product/1288667/LINEStorePC/main.png;compress=true'),
              fit: BoxFit.contain,
              height: _sliderValue,
            ),
            AboutListTile(),
            SizedBox(
              height: 3,
            )
          ],
        ),
      ),
    );
  }
}
