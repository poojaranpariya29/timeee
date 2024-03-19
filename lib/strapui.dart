import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Strapui extends StatefulWidget {
  const Strapui({super.key});

  @override
  State<Strapui> createState() => _StrapuiState();
}

class _StrapuiState extends State<Strapui> {
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
      backgroundColor: Color(0xffCACFD2),
      appBar: AppBar(),
      body: Stack(
        children: [
          Center(
            child: Image.network(
                "https://rukminim2.flixcart.com/image/612/612/l0r1j0w0/wall-clock/j/v/u/latest-home-decor-analog-wall-clock-acrylic-wall-clock-with-original-imagcgzchtcfzzue.jpeg?q=70"),
          ),
          Stack(
            children: [
              Positioned(
                top: 160,
                left: 150,
                child: Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  foregroundDecoration:
                      BoxDecoration(shape: BoxShape.circle, boxShadow: [
                    BoxShadow(
                      color: Colors.white54,
                      spreadRadius: 1,
                      blurRadius: 5,
                    ),
                  ]),
                  child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Column(
                            children: [
                              Text(
                                "12",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "6",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "9",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "3",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Transform.rotate(
                            angle: 2 / 6 * pi,
                            child: Column(
                              children: [
                                Text(
                                  "*",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(),
                                Text("*",
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                          Transform.rotate(
                            angle: 1 / 6 * pi,
                            child: Column(
                              children: [
                                Text(
                                  "*",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(),
                                Text("*",
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                          Transform.rotate(
                            angle: 4 / 6 * pi,
                            child: Column(
                              children: [
                                Text(
                                  "*",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(),
                                Text("*",
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                          Transform.rotate(
                            angle: 5 / 6 * pi,
                            child: Column(
                              children: [
                                Text(
                                  "*",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(),
                                Text("*",
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(25),
                            child: CircularProgressIndicator(
                              value: (duration.inHours % 24) / 24,
                              color: Colors.grey,
                              strokeWidth: 7,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(35),
                            child: CircularProgressIndicator(
                              value: (duration.inMinutes % 60) / 60,
                              color: Colors.grey,
                              strokeWidth: 7,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(45),
                            child: CircularProgressIndicator(
                              value: (duration.inSeconds % 60) / 60,
                              color: Colors.grey,
                              strokeWidth: 5,
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          )
        ],
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
