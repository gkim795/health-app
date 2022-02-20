import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../chart.dart';

class CycleTracking extends StatelessWidget {
  const CycleTracking({Key? key}) : super(key: key);

  Widget _buildCycleSet(
      String title, String dateRange, int cycleDays, int monthDays) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
              ),
              Text(dateRange)
            ],
          ),
          Text(
            "$cycleDays Day period",
            style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
          ),
          Container(
            child: Chart(cycleDays, monthDays),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Cycle Prediction Dates",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.all(5),
              color: Colors.white,
              child: TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
                eventLoader: (day) {
                  final date = int.parse(DateFormat.d().format(day));
                  if (date >= 8 && date <= 14) return ["hi"];
                  return [];
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your Cycles",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Card(
                  elevation: 0,
                  child: Column(
                    children: [
                      Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildCycleSet(
                                "Current Cycle: ", "Started Feb 15 ", 8, 10),
                            _buildCycleSet(
                                "21 Days: ", "Jan 1 - Feb 1 ", 8, 20),
                            _buildCycleSet(
                                "32 Days: ", "Dec 8 2021 - Dec 31 2021 ", 4, 20)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Summary",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple.shade400),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Last Menstrual Period"),
                            Padding(
                              padding: EdgeInsets.all(2),
                            ),
                            Text(
                              "Started February 2",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Typical Period Length"),
                            Padding(
                              padding: EdgeInsets.all(2),
                            ),
                            Text(
                              "8 days",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Typical Cycle Length"),
                            Padding(
                              padding: EdgeInsets.all(2),
                            ),
                            Text(
                              "30 days",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
