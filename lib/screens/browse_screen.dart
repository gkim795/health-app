import 'package:flutter/material.dart';
import 'package:health_summary/screens/information_screen.dart';

import '../models/health_category.dart';
import '../widgets/health_catgories.dart';

class BrowseScreen extends StatefulWidget {
  const BrowseScreen({Key? key}) : super(key: key);

  @override
  _BrowseScreenState createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen> {
  final List<HealthCategory> healthCategories = [
    HealthCategory(
        title: "Activity", iconColor: Colors.blueAccent, icon: Icons.fireplace),
    HealthCategory(
        title: "Body Measurements",
        iconColor: Colors.greenAccent,
        icon: Icons.pin_outlined),
    HealthCategory(
        title: "Cycle Tracking",
        iconColor: Colors.purpleAccent,
        icon: Icons.track_changes),
    HealthCategory(
        title: "Hearing", iconColor: Colors.redAccent, icon: Icons.hearing),
    HealthCategory(
        title: "Heart",
        iconColor: Colors.greenAccent,
        icon: Icons.add_chart_outlined),
    HealthCategory(
        title: "Mindfulness",
        iconColor: Colors.orangeAccent,
        icon: Icons.smart_toy_outlined),
    HealthCategory(
        title: "Mobility", iconColor: Colors.black, icon: Icons.bike_scooter),
    HealthCategory(
        title: "Nutrition",
        iconColor: Colors.blueAccent,
        icon: Icons.restaurant),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(padding: EdgeInsets.all(10)),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "Health Categories",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
        ),
        HealthCatgories(healthCategories),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "Health Records",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: TextButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Add Account"),
                ],
              ),
              onPressed: () => {print("call doctor")},
            ),
          ),
        ),
      ],
    );
  }
}
