import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_notify/modal/notify.dart';
import 'package:firebase_notify/welcome.dart';
import 'package:flutter/material.dart';

Future<void> _messageHandler(RemoteMessage message) async {
  print('background message ${message.notification!.body}');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseMessaging.instance.getInitialMessage();
  FirebaseMessaging.onBackgroundMessage(_messageHandler);

  // AwesomeNotifications().initialize(null, [
  //   NotificationChannel(
  //     channelGroupKey: 'remainder',
  //     channelKey: 'intant_notification',
  //     channelName: 'Basic Instant Notification',
  //     channelDescription: 'Are you gettting hungry! Dont worry.',
  //     defaultColor: const Color(0xFF9D50DD),
  //     ledColor: Colors.white,
  //     playSound: true,
  //   ),
  // ]);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("message recieved");

      print(message.notification!.title);
      print(message.data.values);
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // routes: {
      //   '/welcome': (context) => const Welcome(),
      // },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: TextButton(
              onPressed: () {
                Notify.instantNotify();
              },
              child: const Text("Instant notification"),
            ),
          )),
      //
    );
  }
}

// Future<void> _messageHandler(RemoteMessage message) async {
//   print("Message from firebase push ${message.data}");

//   AwesomeNotifications().createNotificationFromJsonData(message.data);
// }
