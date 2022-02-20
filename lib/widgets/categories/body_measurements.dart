import 'package:flutter/material.dart';
import 'package:health_summary/dummy_data.dart';

import '../../models/health_category.dart';

class BodyMeasurements extends StatelessWidget {
  final List<String> options = BODY_MEASUREMENTS_FIELDS;
  const BodyMeasurements({Key? key}) : super(key: key);

  Widget _buildSnippets() {
    return Column(
      children: options.map((option) {
        return Column(
          children: [
            ListTile(
              title: Text(option),
              trailing: Icon(Icons.arrow_forward),
              onTap: () => {
                print("nothing"),
              },
            ),
            const Divider()
          ],
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Body Measurements",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "No Data Available",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
        ),
        _buildSnippets()
      ],
    );
  }
}
