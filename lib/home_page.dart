import 'package:appp/digitalui.dart';
import 'package:appp/strapui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'analogui.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
      ),
      drawer: NavigationDrawer(
        backgroundColor: Color(0xffDFF9F6),
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Pooja Patel",
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text(
              "poojaranpariya29@gmail.com",
              style: TextStyle(color: Colors.black),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://rukminim2.flixcart.com/image/612/612/xif0q/t-shirt/w/l/j/l-514-women-tshirt-doil-domec-original-imagydw8yrgrybns.jpeg?q=70"),
            ),
            decoration: BoxDecoration(color: Color(0xffEFC6E9)),
          ),
          Container(
            height: 50,
            width: 300,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(color: Colors.blueGrey),
                ],
                color: Colors.white),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "TYPES OF WATCH:",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: SizedBox(
              height: 22,
              width: 22,
              child: Icon(
                Icons.watch_later_outlined,
                color: Colors.black,
              ),
            ),
            label: InkWell(
              child: (Text(
                " Analog Clock",
                style: TextStyle(color: Colors.black),
              )),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnalogUI(),
                    ));
              },
            ),
            style:
                ButtonStyle(overlayColor: MaterialStatePropertyAll(Colors.red)),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: SizedBox(
              height: 22,
              width: 22,
              child: Icon(
                Icons.watch_outlined,
                color: Colors.black,
              ),
            ),
            label: InkWell(
              child: (Text(
                " Digital Clock",
                style: TextStyle(color: Colors.black),
              )),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Digitalui(),
                    ));
              },
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: SizedBox(
              height: 22,
              width: 22,
              child: Icon(
                Icons.adjust_rounded,
                color: Colors.black,
              ),
            ),
            label: InkWell(
              child: (Text(
                " Strap Watch",
                style: TextStyle(color: Colors.black),
              )),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Strapui(),
                    ));
              },
            ),
            style:
                ButtonStyle(overlayColor: MaterialStatePropertyAll(Colors.red)),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Edit",
                  style:
                      TextStyle(fontSize: 16, color: Colors.deepOrangeAccent),
                ),
                Spacer(),
                Icon(
                  Icons.add,
                  color: Colors.deepOrangeAccent,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Alarms",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.bed_rounded,
                  color: Colors.grey,
                ),
                Text(
                  " Sleep | Wake Up",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey),
                ),
              ],
            ),
            Divider(
              color: Color(0xff17202A),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "No Alarm",
                  style: TextStyle(fontSize: 30, color: Color(0xff616A6B)),
                ),
                Spacer(),
                Container(
                  height: 25,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff17202A)),
                  child: Center(
                    child: Text(
                      "CHANGE",
                      style: TextStyle(color: Colors.deepOrangeAccent),
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Tomorrow Morning",
                style: TextStyle(color: Color(0xff616A6B), fontSize: 12),
              ),
            ),
            Divider(
              color: Color(0xff17202A),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Other",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Color(0xff17202A),
            ),
            Row(
              children: [
                Text(
                  "5:30",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 40,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "AM",
                  style: TextStyle(color: Colors.grey, fontSize: 25),
                ),
                Spacer(),
                Container(
                  height: 25,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.green),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Alarm, Mon, Tue, Wed, Thu, and Fri",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Divider(
              color: Color(0xff17202A),
            ),
            Row(
              children: [
                Text(
                  "6:00",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 40,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "AM",
                  style: TextStyle(color: Colors.grey, fontSize: 25),
                ),
                Spacer(),
                Container(
                  height: 25,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.green),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Alarm, Mon, Tue, Wed, Thu, and Fri",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Divider(
              color: Color(0xff17202A),
            ),
          ],
        ),
      ),
    );
  }
}
