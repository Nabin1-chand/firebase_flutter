import 'dart:math';

import 'package:awesome_notifications/awesome_notifications.dart';

class Notify {
  static Future<bool> instantNotify() async {
    final AwesomeNotifications awesomeNotifications = AwesomeNotifications();
    return awesomeNotifications.createNotification(
        content: NotificationContent(
      id: Random().nextInt(100),
      title: "Hungry!!",
      body:
          "Are you getting hungry! dont worry, we are here to provide servicee.",
      // bigPicture: 'assets/images/food.png',
      bigPicture:
          'https://media.gettyimages.com/id/123155123/vector/cooking.jpg?s=612x612&w=gi&k=20&c=G5cD4vhpLx_m82EE9e__Bk6Dowfjf2bt4n-epWASKwg=',
      notificationLayout: NotificationLayout.BigPicture,
      channelKey: 'intant_notification',
    ));
  }
}
