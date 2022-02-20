import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './chart_bar.dart';

class Chart extends StatelessWidget {
  final int daysOfCycle;
  final int daysOfMonth;

  Chart(this.daysOfCycle, this.daysOfMonth);

  Widget _buildBars() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ...List.filled(daysOfCycle, 0).map((tx) {
          return Flexible(
            fit: FlexFit.tight,
            child: ChartBar(true),
          );
        }),
        ...List.filled(daysOfMonth, 0).map(
          (tx) {
            return Flexible(
              fit: FlexFit.tight,
              child: ChartBar(false),
            );
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: _buildBars(),
    );
  }
}
