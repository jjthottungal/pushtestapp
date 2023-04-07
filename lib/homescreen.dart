import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();

    initPlatformState();
  }

  void initPlatformState() {
    //OneSignal.shared.setLogLevel(OSLogLevel.debug, OSLogLevel.none);
    OneSignal.shared.setAppId('19a211d2-e82c-4ed7-975d-a3fade2c4e03');
    OneSignal.shared
        .promptUserForPushNotificationPermission()
        .then((accepted) {});
    OneSignal.shared.setNotificationWillShowInForegroundHandler(
        (OSNotificationReceivedEvent event) {
      //print('Event Triggered${event.notification.title}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //elevation: 10,
        title: const Text(
          'OneSignal Notification',
          style: TextStyle(fontSize: 20),
        ),
        //centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: const Text('OneSignal Notification Platform'),
          ),
        ),
      ),
    );
  }
}
