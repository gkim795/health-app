import 'package:flutter/material.dart';

class HeaderSummary extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String value;
  final String unit;
  final VoidCallback handleClick;

  HeaderSummary(this.icon, this.iconColor, this.title, this.value, this.unit,
      this.handleClick);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 150,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Ink(
          color: iconColor,
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: handleClick,
            child: SizedBox(
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(icon, size: 40),
                        Text(title, style: const TextStyle(fontSize: 15))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          value,
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(5),
                        ),
                        Text(unit),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
