import 'dart:async';
import 'package:http/http.dart' as http;

import 'package:flutter_background/flutter_background.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final backgroundTaskProvider =
    StateNotifierProvider<BackgroundTasakStateNotifier, void>(
        (ref) => BackgroundTasakStateNotifier());

class BackgroundTasakStateNotifier extends StateNotifier<void> {
  BackgroundTasakStateNotifier() : super(null);

  StreamSubscription subscription;

  Future<void> _fetchApi(int postal, DateTime birthday) {
    int birthday_timestamp = birthday.millisecondsSinceEpoch; // TODO(jr): check if this is the right
    final url = Uri.parse('https://www.impfportal-niedersachsen.de/portal/rest/appointments/findVaccinationCenterListFree/$postal?stiko=&count=1&birthdate=$birthday_timestamp');
    // https://www.impfportal-niedersachsen.de/portal/rest/appointments/findVaccinationCenterListFree/49088?stiko=&count=1&birthdate=777333600000
    http.get(url)
  }

  Future<bool> _enableBackgroundExecution() async {
    const config = FlutterBackgroundAndroidConfig(
      notificationTitle: 'flutter_background example app',
      notificationText:
          'Background notification for keeping the example app running in the background',
      notificationIcon: AndroidResource(name: 'background_icon'),
    );

    final hasPermissions =
        await FlutterBackground.initialize(androidConfig: config);

    if (hasPermissions) {
      final backgroundExecution =
          await FlutterBackground.enableBackgroundExecution();
      if (backgroundExecution) {
        return true;
      }
    }
    return false;
  }

  Future<void> _disableBackgroundExecution() async {
    await FlutterBackground.disableBackgroundExecution();
  }

  Future<void> stopped() async {
    await _disableBackgroundExecution();
  }

  Future<void> started() async {
    final canExecute = await _enableBackgroundExecution();
    if (canExecute) {}
  }
}
