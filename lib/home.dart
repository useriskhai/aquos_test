import 'package:aquos_test/noti_service.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //button show noti now
            ElevatedButton(
                onPressed: () {
                  NotiService().showNotification(
                    title: "Title",
                    body: 'hello khai',
                  );
                },
                child: const Text("Send Notification now")),

            //button show noti later
            ElevatedButton(
                onPressed: () {
                  NotiService().scheduleNotification(
                    title: "Title",
                    body: 'Body',
                    hour: 14,
                    minute: 9,
                  );
                },
                child: const Text("Schedule Notification")),
          ],
        ),
      ),
    );
  }
}
