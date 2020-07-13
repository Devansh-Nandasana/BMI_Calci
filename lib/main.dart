import 'package:flutter/material.dart';
import 'input_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderThemeData(
          activeTrackColor:Colors.white,
          thumbColor:Color(0xFFE94D66),
          overlayColor: Color(0x52E94D66),
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius:15.0,
          ),
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: 25.0,
          ),
        ),
        primaryColor: Color(0xFF0D0F20),
        scaffoldBackgroundColor:Color(0xFF0D0F20),
        
      ),
      home: InputPage(),
    );
  }
}

