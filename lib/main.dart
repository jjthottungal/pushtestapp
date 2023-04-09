import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:pushtestapp/homescreen.dart';
//import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Initialize firebase messaging service
  //await Firebase.initializeApp();
  //options: DefaultFirebaseOptions.currentPlatform,
  //    );

  runApp(const MyApp());

  OneSignal.shared.setLogLevel(OSLogLevel.debug, OSLogLevel.none);
  OneSignal.shared.setAppId('19a211d2-e82c-4ed7-975d-a3fade2c4e03');
  OneSignal.shared
      .promptUserForPushNotificationPermission()
      .then((accepted) {});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
