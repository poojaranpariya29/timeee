import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Digitalui extends StatefulWidget {
  const Digitalui({super.key});

  @override
  State<Digitalui> createState() => _DigitaluiState();
}

//git config --global user.email "poojaranpariya2901@gmail.com" git config --global user.name "poojaranpariya29"

class _DigitaluiState extends State<Digitalui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFC6E9),
      body: Center(
        child: Stack(
          children: [
            Image.network(
                "https://rukminim2.flixcart.com/image/612/612/xif0q/wall-clock/l/a/0/fancy-and-designer-wall-clock-for-home-offices-bedroom-living-original-imagry4xzghkcvuz.jpeg?q=70"),
            Stack(
              children: [
                Positioned(
                    top: 10,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black12),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
