import 'dart:math';

import 'package:flutter/material.dart';

class AnalogUI extends StatefulWidget {
  const AnalogUI({super.key});

  @override
  State<AnalogUI> createState() => _ClockUIState();
}

class _ClockUIState extends State<AnalogUI> {
  Duration duration = Duration();

  @override
  void initState() {
    super.initState();
    DateTime dateTime = DateTime.now();
    duration = Duration(
        seconds: dateTime.second,
        minutes: dateTime.minute,
        hours: dateTime.hour);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFC6E9),
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.black12),
          alignment: Alignment.center,
          child: Stack(
            children: [
              Column(
                children: [
                  Text("12"),
                  Spacer(),
                  Text("6"),
                ],
              ),
              Transform.rotate(
                angle: 1 / 6 * pi,
                child: Column(
                  children: [
                    Text("1"),
                    Spacer(),
                    Text("7"),
                  ],
                ),
              ),
              Transform.rotate(
                angle: 2 / 6 * pi,
                child: Column(
                  children: [
                    Text("2"),
                    Spacer(),
                    Text("8"),
                  ],
                ),
              ),
              Transform.rotate(
                angle: 3 / 6 * pi,
                child: Column(
                  children: [
                    Text("3"),
                    Spacer(),
                    Text("9"),
                  ],
                ),
              ),
              Transform.rotate(
                angle: 4 / 6 * pi,
                child: Column(
                  children: [
                    Text("4"),
                    Spacer(),
                    Text("10"),
                  ],
                ),
              ),
              Transform.rotate(
                angle: 5 / 6 * pi,
                child: Column(
                  children: [
                    Text("5"),
                    Spacer(),
                    Text("11"),
                  ],
                ),
              ),
              Transform.rotate(
                angle: duration.inHours / 6 * pi,
                child: Container(
                  width: 6,
                  height: 200,
                  margin: EdgeInsets.only(bottom: 100, top: 50),
                  color: Colors.black,
                ),
              ),
              Transform.rotate(
                angle: duration.inMinutes / 30 * pi,
                child: Container(
                  width: 4,
                  height: 200,
                  margin: EdgeInsets.only(bottom: 100, top: 20),
                  color: Colors.black,
                ),
              ),
              Transform.rotate(
                angle: duration.inSeconds / 30 * pi,
                child: Container(
                  width: 2,
                  height: 200,
                  margin: EdgeInsets.only(bottom: 100, top: 5),
                  color: Colors.black,
                ),
              ),
            ],
          ),
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
