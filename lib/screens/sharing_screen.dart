import 'package:flutter/material.dart';

import '../widgets/blurb.dart';

class SharingScreen extends StatefulWidget {
  const SharingScreen({Key? key}) : super(key: key);

  @override
  _SharingScreenState createState() => _SharingScreenState();
}

class _SharingScreenState extends State<SharingScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(children: [
              Title(
                color: Colors.black,
                child: Column(
                  children: const [
                    Icon(
                      Icons.people,
                      size: 80,
                    ),
                    Text(
                      "Health Sharing",
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              ),
              Blurb(Icons.checklist_rtl, "You're in control",
                  "Keep friends and family up to date on how you're doing by securely sharing your health data."),
              Blurb(Icons.notification_add, "Dashboard and Notifications",
                  "Data you share will appear in their Health app. They can also get notifications if there's an update"),
              Blurb(Icons.lock, "Private and Secure",
                  "Only a summary of each topic is shared, not the details. The information is encrypted and you can stop sharing at any time."),
              TextButton(
                child: Text("Share with whoever you want to"),
                onPressed: () => {print("call doctor")},
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: TextButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Share with your doctor"),
                  Icon(Icons.medical_services)
                ],
              ),
              onPressed: () => {print("call doctor")},
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              children: [
                TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Apps"), Icon(Icons.arrow_forward)],
                  ),
                  onPressed: () => {print("call doctor")},
                ),
                TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Research Studies"),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  onPressed: () => {print("call doctor")},
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
