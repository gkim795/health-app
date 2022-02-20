import 'package:flutter/material.dart';
import 'package:health_summary/dummy_data.dart';
import 'package:faker/faker.dart';

import '../../models/health_category.dart';

class Default extends StatelessWidget {
  final List<String> options = BODY_MEASUREMENTS_FIELDS;
  final fakerFa = Faker();

  final String title;
  Default(this.title);

  final List<int> randomWords = List.filled(7, 0);

  Widget _buildSnippets() {
    return Column(
      children: randomWords.map((option) {
        return Column(
          children: [
            ListTile(
              title: Text(fakerFa.lorem.word()),
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
          title,
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
