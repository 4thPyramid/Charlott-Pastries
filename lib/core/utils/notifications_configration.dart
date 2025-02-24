import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../main.dart';
import '../fcm_token/logic/send_fcm_token_cubit.dart';
import '../services/service_locator.dart';

Future<void> initializeFcmAndLocalNotifications() async {
  // Request permission for FCM
  NotificationSettings settings =
      await FirebaseMessaging.instance.requestPermission(
    alert: true,
    badge: true,
    sound: true,
  );

  // Configure Android Notification Settings
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  // Configure iOS Notification Details
  //final IOSInitializationSettings initializationSettingsIOS = IOSInitializationSettings();
const DarwinInitializationSettings initializationSettingsIOS =
      DarwinInitializationSettings(
    requestAlertPermission: true,
    requestBadgePermission: true,
    requestSoundPermission: true,
  );
  // Initialize FlutterLocalNotificationsPlugin
  const InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
     iOS: initializationSettingsIOS,

  );

  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  // Get FCM Token
  String? token = await FirebaseMessaging.instance.getToken();
  print('FCM Token: $token');

  final storeFcmTokenCubit = getIt<StoreFcmTokenCubit>();

  // Store the token if it exists
  if (token != null) {
    storeFcmTokenCubit.storeToken(token);
  }

  // Handle incoming foreground messages
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
      
      flutterLocalNotificationsPlugin.show(
        message.notification.hashCode,
        message.notification?.title,
        message.notification?.body,
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'your_channel_id',
            'your_channel_name',
            channelDescription: 'your_channel_description',
            importance: Importance.high,
            priority: Priority.high,
            // Add actions or other configurations here
          ),
          iOS: DarwinNotificationDetails(
            presentAlert: true,
            presentBadge: true,
            presentSound: true,
          ),
        ),
      );
    }
  });
}


Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print("Handling a background message: ${message.messageId}");

  // Show local notification in the background
  if (message.notification != null) {
    await flutterLocalNotificationsPlugin.show(
      message.notification.hashCode,
      message.notification?.title,
      message.notification?.body,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'your_channel_id',
          'your_channel_name',
          channelDescription: 'your_channel_description',
          importance: Importance.high,
          priority: Priority.high,
          actions: <AndroidNotificationAction>[
            AndroidNotificationAction('ACTION_1', 'Action 1'),
            AndroidNotificationAction('ACTION_2', 'Action 2'),
          ],
        ),
        iOS: DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
        ),
      ),
    );
  }
}
