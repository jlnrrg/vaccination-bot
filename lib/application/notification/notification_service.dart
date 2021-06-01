// 📦 Package imports:
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';

final Provider<NotificationService> notificationServiceProvider =
    Provider<NotificationService>(
        (ProviderReference ref) => NotificationService());

class NotificationService {
  NotificationService() : settings = initializeNotificationsSettings();

  late FlutterLocalNotificationsPlugin plugin;
  final InitializationSettings settings;

  static InitializationSettings initializeNotificationsSettings() {
// initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings(onDidReceiveLocalNotification: null);
    const MacOSInitializationSettings initializationSettingsMacOS =
        MacOSInitializationSettings();
    return const InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsIOS,
        macOS: initializationSettingsMacOS);
  }

  Future<void> initializePlugin(
      [Future<dynamic> Function(String?)? callback]) async {
    plugin = FlutterLocalNotificationsPlugin()
      ..initialize(settings, onSelectNotification: callback);
  }

  // void requestPermissions() {
  //   plugin
  //       .resolvePlatformSpecificImplementation<
  //           IOSFlutterLocalNotificationsPlugin>()
  //       ?.requestPermissions(
  //         alert: true,
  //         badge: true,
  //         sound: true,
  //       );
  //   plugin
  //       .resolvePlatformSpecificImplementation<
  //           MacOSFlutterLocalNotificationsPlugin>()
  //       ?.requestPermissions(
  //         alert: true,
  //         badge: true,
  //         sound: true,
  //       );
  // }

  Future<void> showNotification(
      [Future<dynamic> Function(String?)? callback]) async {
    await initializePlugin(callback);
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
            'your channel id', 'your channel name', 'your channel description',
            importance: Importance.max,
            priority: Priority.high,
            fullScreenIntent: true);
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await plugin.show(0, LocaleKeys.notification_title.tr(),
        LocaleKeys.notification_body.tr(), platformChannelSpecifics);
  }
}
