import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_background/flutter_background.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:vaccination_bot/application/bot_settings_form/bot_settings_form_notifier.dart';
import 'package:vaccination_bot/application/notification/notification_service.dart';
import 'package:vaccination_bot/application/personal_form/personal_form_notifier.dart';
import 'package:vaccination_bot/application/personal_form/personal_form_state.dart';
import 'package:vaccination_bot/domain/bot_settings.dart';
import 'package:vaccination_bot/domain/response.dart';
import 'package:vaccination_bot/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';

final backgroundTaskProvider =
    StateNotifierProvider<BackgroundTaskStateNotifier, AsyncValue<int>?>((ref) {
  final personal = ref.watch(personalFormProvider);
  final settings = ref.watch(botSettingsProvider).settings;
  final notificationService = ref.watch(notificationServiceProvider);
  return BackgroundTaskStateNotifier(personal, settings, notificationService);
});

class BackgroundTaskStateNotifier extends StateNotifier<AsyncValue<int>?> {
  BackgroundTaskStateNotifier(
      this.personalState, this.settings, this.notificationService)
      : logger = Logger(
          printer: PrettyPrinter(methodCount: 0, printTime: true),
        ),
        isRunning = false,
        executions = 0,
        _failedFetchApi = 0,
        super(null);

  final Logger logger;

  final PersonalFormState personalState;
  final BotSettings settings;
  final NotificationService notificationService;

  StreamSubscription<int>? subscription;

  bool isRunning;
  int executions;

  int _failedFetchApi;

  late VoidCallback onSuccess;

  Future<void> _initialize() async {
    isRunning = false;
    executions = 0;
    state = null;
  }

  Future<bool> _fetchTestApi(String postal, DateTime birthday) async {
    // for testing
    if (executions == 20) {
      return false;
    } else {
      return true;
    }
  }

  Future<bool> _fetchApiOutOfStock(String postal, DateTime birthday) async {
    final int birthdayTimestamp =
        birthday.millisecondsSinceEpoch; // TODO(jr): check if this is the right
    final url = Uri.parse(
        'https://www.impfportal-niedersachsen.de/portal/rest/appointments/findVaccinationCenterListFree/$postal?stiko=&count=1&birthdate=$birthdayTimestamp');
    final response =
        await http.get(url, headers: {'User-Agent': settings.userAgent});
    if (response.statusCode == 200) {
      final Map<String, dynamic> json = jsonDecode(response.body);
      final Map<String, dynamic> resultList = json['resultList'][0];
      final VaccinationCenterResponse vaccinationCenterResponse =
          VaccinationCenterResponse.fromJson(resultList);
      logger
          .i('${LocaleKeys.loadingExecutions.plural(executions)}: $resultList');
      return vaccinationCenterResponse.outOfStock ?? true;
    } else {
      _failedFetchApi += 1;
      await Future<void>.delayed(
          Duration(seconds: settings.afterFailedRequest));
    }
    return true;
  }

  Stream<int> _getOpenAppointment(String postal, DateTime birthday,
      {bool isTestRun = false}) async* {
    yield executions;
    while (isRunning) {
      final bool isOutOfStock = isTestRun
          ? await _fetchTestApi(postal, birthday)
          : await _fetchApiOutOfStock(postal, birthday);
      executions += 1;
      if (!isOutOfStock) {
        await _appToForeground();
        await stopped();
      }
      await Future<void>.delayed(Duration(
          seconds: settings.afterRequest + Random().nextInt(settings.jitter)));
      if (_failedFetchApi == 10) {
        await Future<void>.delayed(Duration(seconds: settings.afterIpBan));
        _failedFetchApi = 0;
      }
      yield executions;
    }
  }

  Future<bool> _enableBackgroundExecution() async {
    final config = FlutterBackgroundAndroidConfig(
      notificationTitle: LocaleKeys.backgroundExec_title.tr(),
      notificationText: LocaleKeys.backgroundExec_text.tr(),
      notificationIcon: const AndroidResource(name: 'background_icon'),
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
    await _initialize();
    await _disableBackgroundExecution();
  }

  Future<void> started(VoidCallback onSuccess, {bool isTestRun = false}) async {
    state = const AsyncValue.loading();
    isRunning = true;
    final canExecute = await _enableBackgroundExecution();
    if (canExecute) {
      final postalLocal = personalState.person.postal?.getOrNull();
      final birthdayLocal = personalState.person.birthday?.getOrNull();

      if (postalLocal != null && birthdayLocal != null) {
        this.onSuccess = onSuccess;

        subscription?.cancel();
        subscription = _getOpenAppointment(postalLocal, birthdayLocal,
                isTestRun: isTestRun)
            .listen((event) {
          state = AsyncValue.data(event);
          // state = state..add(event);
        }, onDone: () {
          state = null;
        });
      }
    }
  }

  Future<void> _appToForeground() async {
    notificationService.showNotification((_) async => onSuccess());
  }

  Future<String?> getJS() async {
    final js = await rootBundle.loadString('assets/automatisation.js');
    final vars = personalState.person.toJSVars();
    final text = [vars, js].join('\n');
    return text;
  }

  Future<void> toggleBackgroundTest(VoidCallback onSuccess) async {
    state == null ? await started(onSuccess, isTestRun: true) : await stopped();
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }
}
