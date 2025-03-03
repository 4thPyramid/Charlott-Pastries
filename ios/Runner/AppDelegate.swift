import UIKit
import Flutter
import GoogleMaps
import FirebaseCore
import FirebaseMessaging
import flutter_downloader

@main
@objc class AppDelegate: FlutterAppDelegate, MessagingDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    
    FirebaseApp.configure()
    
    UNUserNotificationCenter.current().delegate = self
    application.registerForRemoteNotifications()

    GMSServices.provideAPIKey("AIzaSyBMaCjdzcpOgRcN1OYGQZCN9CuqiK8KlZs")

    // تعيين مندوب Firebase Messaging
    Messaging.messaging().delegate = self

    // تسجيل الإشعارات
    requestNotificationAuthorization(application)

    // تسجيل الإضافات (مهم جدًا لتشغيل shared_preferences)
    GeneratedPluginRegistrant.register(with: self)

    // FlutterDownloader plugin setup (Important for background tasks)
    FlutterDownloaderPlugin.setPluginRegistrantCallback { registry in
        if (!registry.hasPlugin("FlutterDownloaderPlugin")) {
            FlutterDownloaderPlugin.register(with: registry.registrar(forPlugin: "FlutterDownloaderPlugin")!)
        }
    }

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  // ✅ طلب إذن الإشعارات عند التشغيل
  func requestNotificationAuthorization(_ application: UIApplication) {
      UNUserNotificationCenter.current().requestAuthorization(
          options: [.alert, .sound, .badge]
      ) { granted, error in
          if granted {
              DispatchQueue.main.async {
                  application.registerForRemoteNotifications()
              }
          }
      }
  }

  // ✅ تأكيد تسجيل الـ APNs Token
  override func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    print("✅ APNS Token تم تسجيله: \(deviceToken)")
    Messaging.messaging().apnsToken = deviceToken
    super.application(application, didRegisterForRemoteNotificationsWithDeviceToken: deviceToken)
  }

  // ✅ الحصول على FCM Token بعد استلام APNs Token
  func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String?) {
      print("✅ Firebase FCM Token: \(fcmToken ?? "لا يوجد")")
  }
}
