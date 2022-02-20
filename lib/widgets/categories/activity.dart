import 'package:flutter/material.dart';

import '../snippet.dart';
import '../../models/health_category.dart';
import '../../dummy_data.dart';

class Activity extends StatelessWidget {
  final List<HealthCategoryData> data = ACTIVITY_DATA;

  Activity({Key? key}) : super(key: key);

  Widget _buildSnippets() {
    return Column(
      children: data.map((element) {
        return Snippet(
          icon: element.icon,
          color: element.color,
          title: element.title,
          value: element.value,
          unit: element.unit,
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 5.0,
        ),
        Text(
          "Activity",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        _buildSnippets(),
      ],
    );
  }
}
