import 'package:flutter/material.dart';

import '../widgets/header.dart';
import '../widgets/snippet.dart';

class SummaryScreen extends StatefulWidget {
  const SummaryScreen({Key? key}) : super(key: key);

  @override
  _SummaryScreenState createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
  Widget _buildFavorites() {
    return Card(
      elevation: 0,
      child: Column(
        children: [
          Snippet(
            icon: Icons.bloodtype,
            color: Colors.red.shade400,
            title: "Blood Pressure",
            value: 55,
            unit: "mmHg",
          ),
          Snippet(
            icon: Icons.donut_small,
            color: Colors.purple.shade400,
            title: "Cycle",
            value: 8,
            unit: "hours",
          ),
          Snippet(
            icon: Icons.fireplace,
            color: Colors.red.shade300,
            title: "Steps",
            value: 31,
            unit: "steps",
          ),
        ],
      ),
    );
  }

  Widget _buildTrends() {
    return Card(
      elevation: 0,
      child: Column(
        children: [
          Snippet(
            icon: Icons.bed,
            color: Colors.blue.shade400,
            title: "Sleep",
            value: 8,
            unit: "hours",
          ),
          Snippet(
            icon: Icons.padding,
            color: Colors.orange,
            title: "Reading Habits",
            value: 1,
            unit: "book",
          ),
          Snippet(
            icon: Icons.ac_unit,
            color: Colors.blue,
            title: "AC Unit Used",
            value: 4.8,
            unit: "degrees",
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 300,
          width: double.infinity,
          child: Header(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: const EdgeInsets.all(5),
            width: double.infinity,
            child: Card(
              elevation: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Favorites",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  _buildFavorites()
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: const EdgeInsets.all(5),
            width: double.infinity,
            child: Card(
              elevation: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Trends",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  _buildTrends()
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
