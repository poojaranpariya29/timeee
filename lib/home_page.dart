import 'package:appp/digitalui.dart';
import 'package:appp/strapui.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(),
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
        height: double.infinity,
        width: double.infinity,
        color: Color(0xffEFC6E9),
      ),
    );
  }
}
