import 'package:flutter/material.dart';

class HealthCategory {
  final String title;
  final IconData icon;
  final Color iconColor;

  HealthCategory(
      {required this.title,
      this.icon = Icons.help,
      this.iconColor = Colors.black});
}

class HealthCategoryData {
  final IconData icon;
  final Color color;
  final String title;
  final num value;
  final String unit;

  HealthCategoryData(
      {this.icon = Icons.ac_unit,
      this.color = Colors.redAccent,
      this.title = "Title",
      this.value = 50,
      this.unit = "mg"});
}
