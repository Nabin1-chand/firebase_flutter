// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// final FirebaseMessaging messaging = FirebaseMessaging.instance;

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  // set auth(FirebaseAuthentication auth) {}

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Firebase.initializeApp().whenComplete(() {
  //     auth = FirebaseAuthentication();
  //     FirebaseMessaging.onBackgroundMessage(_firebaseBackgroundMessageReceived);
  //     setState(() {});
  //   });
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(child: Text("Welcome to firebase push notification")),
    );
  }
}

// class FirebaseAuthentication {}

// Future _firebaseBackgroundMessageReceived(RemoteMessage message) async {
//   print(
//       "Notification: ${message.notification!.title}-${message.notification!.body}");
// }
