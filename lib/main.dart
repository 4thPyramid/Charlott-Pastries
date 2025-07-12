import 'dart:io';
import 'package:charlot/core/data/cached/cache_helper.dart';
import 'package:charlot/core/services/service_locator.dart';
import 'package:charlot/firebase_options.dart';
import 'package:charlot/src/app.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';
import 'core/utils/notifications_configration.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await getIt<CacheHelper>().init();
  
  await EasyLocalization.ensureInitialized();
  await FlutterDownloader.initialize(debug: true, ignoreSsl: true);
  try {
    // Initialize Firebase first
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    
    // Now that Firebase is initialized, we can request permissions
    await _requestPermissions();
    
    // Only initialize Firebase Messaging on physical devices, not simulators
    if (!Platform.isIOS || !_isSimulator()) {
      await _initializeFirebaseMessaging();
    }
  } catch (e) {
    print('Firebase initialization error: $e');
    // Continue app execution even if Firebase fails
  }

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path: 'assets/translate',
      fallbackLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

Future<void> _requestPermissions() async {
  // Request storage permission
  if (await Permission.storage.request().isGranted) {
    print("Storage permission granted");
  } else {
    print("Storage permission denied");
    if (await Permission.storage.isPermanentlyDenied) {
      openAppSettings();
    }
  }
  
  // Request notification permission (needed for Firebase Messaging)
  if (Platform.isIOS) {
    await FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
  }
}

// Check if the app is running on a simulator (iOS only)
bool _isSimulator() {
  if (Platform.isIOS) {
    // On iOS, we can detect simulators by checking the device name
    // Simulator device names typically include "Simulator" in the name
    String deviceName = Platform.operatingSystemVersion.toLowerCase();
    return deviceName.contains('simulator');
  }
  return false;
}

// Initialize Firebase Messaging with proper error handling
Future<void> _initializeFirebaseMessaging() async {
  try {
    // Set up background message handler
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
    
    // Get FCM token
    final fcmToken = await FirebaseMessaging.instance.getToken();
    print('FCM Token: $fcmToken');
    
    // Configure message handling
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');
      
      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification}');
      }
    });
  } catch (e) {
    print('Firebase Messaging initialization error: $e');
    // Continue app execution even if Firebase Messaging fails
  }
}
