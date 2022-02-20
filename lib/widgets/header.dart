import 'package:flutter/material.dart';
import 'dart:math';

import 'header_summary.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  String greetingMessage() {
    var timeNow = DateTime.now().hour;

    if (timeNow <= 12) {
      return 'Good Morning';
    } else if ((timeNow > 12) && (timeNow <= 16)) {
      return 'Good Afternoon';
    } else if ((timeNow > 16) && (timeNow < 20)) {
      return 'Good Evening';
    } else {
      return 'Good Night';
    }
  }

  int _heartBeatCount = 66;
  String _bloodPressure = "62/124";

  void _increaseHeartBeat() {
    setState(() {
      _heartBeatCount += 1;
      print(_heartBeatCount);
    });
  }

  void _randomizeBloodPressure() {
    int top = 60 + Random().nextInt(100);
    int bottom = 100 + Random().nextInt(80);

    setState(() {
      _bloodPressure = "$top/$bottom";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(220, 200, 200, 1),
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue,
                  Colors.white,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  greetingMessage(),
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "Welcome to your health summary",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20.0,
            left: 20.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HeaderSummary(
                    Icons.h_plus_mobiledata_sharp,
                    Colors.red.shade400,
                    "Heart Beats",
                    "$_heartBeatCount",
                    "bpm",
                    _increaseHeartBeat),
                HeaderSummary(Icons.bloodtype, Colors.amber, "Blood Pressure",
                    _bloodPressure, "mmHg", _randomizeBloodPressure),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
