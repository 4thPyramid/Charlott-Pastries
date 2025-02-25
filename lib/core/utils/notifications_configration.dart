import 'package:charlot/core/data/cached/cache_helper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import '../../main.dart';
import '../fcm_token/logic/send_fcm_token_cubit.dart';
import '../services/service_locator.dart';

Future<void> initializeFcmAndLocalNotifications() async {
  await _setupLocalNotifications();

  await _requestNotificationPermissions();

  await _handleFcmToken();

  _setupForegroundMessageHandling();
}

Future<void> _setupLocalNotifications() async {
  const AndroidInitializationSettings androidSettings =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  const DarwinInitializationSettings iosSettings = DarwinInitializationSettings(
    requestAlertPermission: false, 
    requestBadgePermission: true,
    requestSoundPermission: true,
  );

  const InitializationSettings initSettings = InitializationSettings(
    android: androidSettings,
    iOS: iosSettings,
  );

  await flutterLocalNotificationsPlugin.initialize(
    initSettings,
    onDidReceiveNotificationResponse: (details) {
    },
  );
}

Future<void> _requestNotificationPermissions() async {
  final settings = await FirebaseMessaging.instance.requestPermission(
    alert: true,
    badge: true,
    sound: true,
    provisional: true, // مهم لـ iOS (إذن مؤقت)
  );

  print('إعدادات الصلاحيات: ${settings.authorizationStatus}');
}

Future<void> _handleFcmToken() async {
  try {
    final String? token = await FirebaseMessaging.instance.getToken();
    print('FCM Token الأولي: $token');

    if (token != null) {
      await CacheHelper.saveData(key: 'fcm_token', value: token);
     // await getIt<StoreFcmTokenCubit>().storeToken(token);
    }

    FirebaseMessaging.instance.onTokenRefresh.listen((newToken) async {
      print('تم تحديث الـ FCM Token: $newToken');
      await getIt<StoreFcmTokenCubit>().storeToken(newToken);
    });
  } catch (e) {
    print('خطأ في الحصول على الـ Token: ${e.toString()}');
  }
}

void _setupForegroundMessageHandling() {
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('رسالة واردة في الواجهة الأمامية: ${message.messageId}');
    _showLocalNotification(message);
  });
}

void _showLocalNotification(RemoteMessage message) {
  if (message.notification == null) return;

  final notification = message.notification!;
  final android = message.notification?.android;

  flutterLocalNotificationsPlugin.show(
    notification.hashCode,
    notification.title,
    notification.body,
    NotificationDetails(
      android: AndroidNotificationDetails(
        android?.channelId ?? 'your_channel_id',
        android?.channelId ?? 'your_channel_name',
        channelDescription: 'your_channel_description',
        importance: Importance.high,
        priority: Priority.high,
        icon: android?.smallIcon,
      ),
      iOS: const DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      ),
    ),
  );
}

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print("معالجة رسالة في الخلفية: ${message.messageId}");
  _showLocalNotification(message);
}
