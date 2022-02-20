import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:health_summary/widgets/categories/activity.dart';
import 'package:health_summary/widgets/categories/body_measurements.dart';
import 'package:health_summary/widgets/categories/cycle_tracking.dart';
import 'package:health_summary/widgets/categories/default.dart';

import '../models/health_category.dart';

class InformationScreen extends StatefulWidget {
  static const routeName = '/information';

  InformationScreen();

  @override
  _InformationScreenState createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  @override
  Widget build(BuildContext context) {
    final category =
        ModalRoute.of(context)!.settings.arguments as HealthCategory;

    Widget _buildInformationScreen() {
      switch (category.title) {
        case "Activity":
          return Activity();
        case "Body Measurements":
          return BodyMeasurements();
        case "Cycle Tracking":
          return CycleTracking();
        default:
          return Default(category.title);
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        centerTitle: false,
        leadingWidth: 20,
        elevation: 0,
        title: Text(
          "Browse",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: _buildInformationScreen(),
    );
  }
}
