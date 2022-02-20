import 'package:flutter/material.dart';

class Blurb extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  Blurb(this.icon, this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsets.all(5)),
          Icon(
            icon,
            size: 30,
          ),
          const Padding(
            padding: EdgeInsets.all(10),
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(title), Text(description)],
            ),
          ),
        ],
      ),
    );
  }
}
