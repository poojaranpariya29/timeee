import 'package:appp/home_page.dart';
import 'package:appp/stoapwatch.dart';
import 'package:appp/timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class World_cloak extends StatefulWidget {
  const World_cloak({super.key});

  @override
  State<World_cloak> createState() => _World_cloakState();
}

class _World_cloakState extends State<World_cloak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          Icon(
            Icons.add,
            color: Colors.deepOrangeAccent,
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: Container(
          margin: EdgeInsets.all(10),
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
          child: Column(children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "World Clock",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.grey),
              ),
            ),
            Spacer(),
            Text(
              "No World Clocks",
              style: TextStyle(fontSize: 25, color: Color(0xff616A6B)),
            ),
            Spacer(),
            Row(
              children: [
                Column(children: [
                  Text(
                    "🌏︎",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "World Cloak",
                    style: TextStyle(color: Colors.deepOrangeAccent),
                  )
                ]),
                Spacer(),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      },
                      child: Text(
                        "⏰",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Text(
                      "Alarms",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Stoap_watch(),
                            ));
                      },
                      child: Text(
                        "⏱",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Text(
                      "StoapWatch",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Timer_ui(),
                            ));
                      },
                      child: Text(
                        "⏲",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Text(
                      "Timer",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ])),
    );
  }
}
