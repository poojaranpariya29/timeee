import 'dart:math';

import 'package:flutter/material.dart';

class AnalogUI extends StatefulWidget {
  const AnalogUI({super.key});

  @override
  State<AnalogUI> createState() => _AnalogUIState();
}

class _AnalogUIState extends State<AnalogUI> {
  Duration duration = Duration();

  @override
  void initState() {
    super.initState();
    DateTime dateTime = DateTime.now();
    duration = Duration(
        seconds: dateTime.second,
        minutes: dateTime.minute,
        hours: dateTime.hour);
    timer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD69E93),
      appBar: AppBar(),
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Image.network(
                  "https://rukminim2.flixcart.com/image/612/612/xif0q/wall-clock/l/a/0/fancy-and-designer-wall-clock-for-home-offices-bedroom-living-original-imagry4xzghkcvuz.jpeg?q=70"),
            ),
            Stack(
              children: [
                Positioned(
                    top: 225,
                    left: 80,
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.brown),
                    )),
                Positioned(
                  top: 240,
                  left: 122,
                  child: Transform.rotate(
                    angle: duration.inHours / 6 * pi,
                    child: Container(
                      height: 40,
                      width: 3.5,
                      margin: EdgeInsets.only(bottom: 20),
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  top: 240,
                  left: 122,
                  child: Transform.rotate(
                    angle: duration.inMinutes / 30 * pi,
                    child: Container(
                      height: 40,
                      width: 2,
                      margin: EdgeInsets.only(bottom: 20),
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  top: 240,
                  left: 122,
                  child: Transform.rotate(
                    angle: duration.inSeconds / 30 * pi,
                    child: Container(
                      height: 40,
                      width: 1,
                      margin: EdgeInsets.only(bottom: 20),
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void timer() async {
    await Future.delayed(Duration(seconds: 1), () {});
    duration = Duration(seconds: duration.inSeconds + 1);
    timer();
    setState(() {});
  }
}
