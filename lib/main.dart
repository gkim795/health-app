import 'package:flutter/material.dart';
import 'package:health_summary/screens/summary_screen.dart';

import './screens/tabs_screen.dart';
import './screens/information_screen.dart';

import "./utils/const.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health Summary',
      theme: Constants.lighTheme(context),
      routes: {
        "/": (ctx) => TabsScreen(),
        InformationScreen.routeName: (ctx) => InformationScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => SummaryScreen());
      },
    );
  }
}
