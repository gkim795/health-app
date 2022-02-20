import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Snippet extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final num value;
  final String unit;

  Snippet(
      {this.icon = Icons.ac_unit,
      this.color = Colors.redAccent,
      this.title = "Title",
      this.value = 50,
      this.unit = "mg"});

  Widget _buildTitleSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon, color: color),
            Text(
              "$title",
              style: TextStyle(
                  fontSize: 15, color: color, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Text(DateFormat.jm().format(DateTime.now()))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Card(
        child: Column(
          children: [
            _buildTitleSection(),
            Padding(padding: EdgeInsets.all(4.0)),
            Row(children: [
              Text(
                "$value",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(unit)
            ]),
          ],
        ),
      ),
    );
  }
}
