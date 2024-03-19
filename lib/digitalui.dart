import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Digitalui extends StatefulWidget {
  const Digitalui({super.key});

  @override
  State<Digitalui> createState() => _DigitaluiState();
}

//git config --global user.email "poojaranpariya2901@gmail.com" git config --global user.name "poojaranpariya29"

class _DigitaluiState extends State<Digitalui> {
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
      appBar: AppBar(),
      backgroundColor: Color(0xffE5E7E9),
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Image.network(
                  "https://rukminim2.flixcart.com/image/612/612/xif0q/wallpaper/3/j/2/18-28-1-80457-vibral-original-imagr4szw5hybvfu.jpeg?q=70"),
            ),
            Stack(
              children: [
                Positioned(
                    top: 180,
                    left: 125,
                    child: Container(
                      height: 110,
                      width: 120,
                      color: Color(0xffEAF2F8),
                    )),
                Positioned(
                  top: 210,
                  left: 120,
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.black12,
                    child: Center(
                      child: Text(
                        "${duration.inHours % 24}".padLeft(2, "0"),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 210,
                  left: 160,
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.black12,
                    child: Center(
                      child: Text(
                        "${duration.inMinutes % 60}".padLeft(2, "0"),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 210,
                  left: 200,
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.black12,
                    child: Center(
                      child: Text(
                        "${duration.inSeconds % 60}".padLeft(2, "0"),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
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
