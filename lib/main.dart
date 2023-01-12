import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_notify/modal/notify.dart';
import 'package:firebase_notify/welcome.dart';
import 'package:flutter/material.dart';

// Future<void> _messageHandler(RemoteMessage message) async {
//   print('background message ${message.notification!.body}');
// }

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // FirebaseMessaging.onBackgroundMessage(_messageHandler);

  runApp(const MyApp());
  AwesomeNotifications().initialize(null, [
    NotificationChannel(
      channelGroupKey: 'remainder',
      channelKey: 'intant_notification',
      channelName: 'Basic Instant Notification',
      channelDescription: 'Are you gettting hungry! Dont worry.',
      defaultColor: const Color(0xFF9D50DD),
      ledColor: Colors.white,
    ),
  ]);
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

    // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    //   print("message recieved");
    //   print(message.notification!.body);
    //   print(message.data.values);
    // showDialog(
    //     context: context,
    //     builder: (BuildContext context) {
    //       return AlertDialog(
    //         title: Text("Notification"),
    //         content: Text(event.notification!.body!),
    //         actions: [
    //           TextButton(
    //             child: Text("Ok"),
    //             onPressed: () {
    //               Navigator.of(context).pop();
    //             },
    //           )
    //         ],
    //       );
    //     });
    // });
    // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    //   print('Message clicked!');
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute<void>(builder: (context) => const Welcome()),
    //   );
    // }
    //
    // });
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
