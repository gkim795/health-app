import 'package:flutter/material.dart';
import 'package:health_summary/models/health_category.dart';

import '../screens/information_screen.dart';

class HealthCatgories extends StatefulWidget {
  final List<HealthCategory> list;

  HealthCatgories(this.list);

  @override
  _HealthCatgoriesState createState() => _HealthCatgoriesState();
}

class _HealthCatgoriesState extends State<HealthCatgories> {
  void _selectCatgory(BuildContext ctx, category) {
    Navigator.of(ctx)
        .pushNamed(InformationScreen.routeName, arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            ...widget.list.map((category) {
              return Column(
                children: [
                  ListTile(
                    leading: Icon(category.icon,
                        color: category.iconColor, size: 26),
                    title: Text(category.title),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () => {
                      _selectCatgory(context, category),
                    },
                  ),
                  const Divider()
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
