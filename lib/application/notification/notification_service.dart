import 'package:flutter/foundation.dart';
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

  static const _channelId = 'VaccinationBotNotificationID';
  static const _channelName = 'Vaccination Bot Notification';
  static const _channelDescription =
      'This Notification alerts the user that a new vaccination appointment is available';

  static InitializationSettings initializeNotificationsSettings() {
// initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    return const InitializationSettings(android: initializationSettingsAndroid);
  }

  Future<void> initializePlugin(
      [Future<dynamic> Function(String?)? callback]) async {
    plugin = FlutterLocalNotificationsPlugin()
      ..initialize(settings, onSelectNotification: callback);
  }

  Future<void> showNotification(
      [Future<dynamic> Function(String?)? callback]) async {
    await initializePlugin((_) async {
      debugPrint('Callback started');
      await callback?.call('');
    });
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
            _channelId, _channelName, _channelDescription,
            importance: Importance.max,
            priority: Priority.high,
            fullScreenIntent: true);
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await plugin.show(0, LocaleKeys.notification_title.tr(),
        LocaleKeys.notification_body.tr(), platformChannelSpecifics);
  }
}
