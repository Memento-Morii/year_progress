import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:abushakir/abushakir.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

EtDatetime now = EtDatetime.now();
var nextYear = EtDatetime(year: now.year + 1, month: 1, day: 1);
var dateDifference = nextYear.difference(now).inDays;
var progress = 100 - (100 * dateDifference) / 365;

class _HomePageState extends State<HomePage> {
  final slider = SleekCircularSlider(
    appearance: CircularSliderAppearance(
      // animationEnabled: true,
      infoProperties: InfoProperties(
        mainLabelStyle: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      customWidths: CustomSliderWidths(
        progressBarWidth: 10,
      ),
      // customColors: CustomSliderColors(),
    ),
    initialValue: progress,
    min: 0,
    max: 100,
  );
  @override
  Widget build(BuildContext context) {
    print("year is");
    print(now.year);
    print(progress);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: slider,
      ),
    );
  }
}
