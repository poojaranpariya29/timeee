import 'package:appp/home_page.dart';
import 'package:appp/timer.dart';
import 'package:appp/worldcloak.dart';
import 'package:flutter/material.dart';

class Stoap_watch extends StatefulWidget {
  const Stoap_watch({super.key});

  @override
  State<Stoap_watch> createState() => _Stoap_watchState();
}

class _Stoap_watchState extends State<Stoap_watch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Text(
              "00:00.00",
              style: TextStyle(fontSize: 80, color: Colors.grey),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xff17202A)),
                  child: Center(
                    child: Text(
                      "Lap",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 80,
                ),
                Container(
                  height: 10,
                  width: 10,
                  decoration:
                      BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                ),
                SizedBox(
                  height: 10,
                  width: 20,
                ),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: Color(0xff17202A), shape: BoxShape.circle),
                ),
                SizedBox(
                  height: 10,
                  width: 80,
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xff145A32)),
                  child: Center(
                    child: Text(
                      "Start",
                      style: TextStyle(color: Colors.green, fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              color: Color(0xff17202A),
            ),
            Spacer(),
            Row(
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => World_cloak(),
                            ));
                      },
                      child: Text(
                        "🌏︎",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Text(
                      "World Cloak",
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
                    Text(
                      "⏱",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text("StoapWatch",
                        style: TextStyle(color: Colors.deepOrangeAccent)),
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
            )
          ],
        ),
      ),
    );
  }
}
