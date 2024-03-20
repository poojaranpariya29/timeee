import 'package:appp/stoapwatch.dart';
import 'package:appp/worldcloak.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'home_page.dart';

class Timer_ui extends StatefulWidget {
  const Timer_ui({super.key});

  @override
  State<Timer_ui> createState() => _Timer_uiState();
}

class _Timer_uiState extends State<Timer_ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.only(top: 10, right: 10, left: 10),
          decoration: BoxDecoration(color: Colors.black),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Timers",
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 250,
                margin: EdgeInsets.all(20),
                padding:
                    EdgeInsets.only(bottom: 60, left: 40, right: 40, top: 120),
                width: 250,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 20)],
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(125),
                      topLeft: Radius.circular(125),
                      bottomRight: Radius.circular(125),
                      topRight: Radius.circular(125),
                    )),
                child: Center(
                  child: Row(
                    children: [
                      SingleChildScrollView(
                        child: Text(
                          "1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n11\n12\n13\n14\n15\n16\n17\n18\n19\n20\n21\n22\n23\n24",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ),
                      Text("hours",
                          style: TextStyle(color: Colors.grey, fontSize: 15)),
                      SizedBox(
                        width: 5,
                      ),
                      SingleChildScrollView(
                        child: Text(
                          "1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n11\n12\n13\n14\n15\n16\n17\n18\n19\n20\n21\n22\n23\n24\n25\n26\n27\n28\n29\n30\n31\n32\n33\n34\n35\n36\n37\n38\n39\n40\n41\n42\n43\n44\n45\n46\n47\n48\n49\n50\n51\n52\n53\n54\n55\n56\n57\n58\n59\n60",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ),
                      Text("min",
                          style: TextStyle(color: Colors.grey, fontSize: 15)),
                      SizedBox(
                        width: 5,
                      ),
                      SingleChildScrollView(
                        child: Text(
                          "1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n11\n12\n13\n14\n15\n16\n17\n18\n19\n20\n21\n22\n23\n24\n25\n26\n27\n28\n29\n30\n31\n32\n33\n34\n35\n36\n37\n38\n39\n40\n41\n42\n43\n44\n45\n46\n47\n48\n49\n50\n51\n52\n53\n54\n55\n56\n57\n58\n59\n60",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ),
                      Text("sec",
                          style: TextStyle(color: Colors.grey, fontSize: 15))
                    ],
                  ),
                ),
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
                        "Cancel",
                        style:
                            TextStyle(color: Color(0xff616A6B), fontSize: 15),
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
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
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
              Container(
                height: 90,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color(0xff17202A),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Label",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Spacer(),
                        Text(
                          "Timer",
                          style:
                              TextStyle(color: Color(0xff616A6B), fontSize: 15),
                        ),
                      ],
                    ),
                    Divider(
                      color: Color(0xff010b15),
                    ),
                    Row(
                      children: [
                        Text(
                          "When Timer Ends",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Spacer(),
                        Text(
                          "Rader",
                          style:
                              TextStyle(color: Color(0xff616A6B), fontSize: 15),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Color(0xff616A6B),
                        ),
                      ],
                    ),
                  ],
                ),
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
                      Text("StoapWatch", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        "⏲",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "Timer",
                        style: TextStyle(color: Colors.deepOrangeAccent),
                      )
                    ],
                  )
                ],
              ),
            ],
          )),
    );
  }
}
