import 'package:flutter/material.dart';
import 'package:flutter_local_notification_example/native_api/local_notification.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocalNotification.requestPermission();
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  LocalNotification.sampleNotification();
                },
                child: const Text("Local Notification")),
            ElevatedButton(
                onPressed: () {
                  LocalNotification.sampleNotification();
                  LocalNotification.repeatNotification();

                }, child: const Text("Repeat Notification"))
          ],

        )
      ),
    );
  }
}


