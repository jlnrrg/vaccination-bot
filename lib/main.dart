import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:vaccination_bot/application/downloader/downloader.dart';
import 'package:vaccination_bot/application/notification/notification_service.dart';
import 'package:vaccination_bot/constants/secrets.dart';
import 'package:vaccination_bot/model/shared_preferences_service.dart';
import 'package:vaccination_bot/view/router/router.dart';
import 'package:vaccination_bot/view/settings/theme_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  // it should be the first line in main method
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  await FlutterDownloader.initialize();
  FlutterDownloader.registerCallback(Downloader.callback);

  MobileAds.instance.initialize();

  await SentryFlutter.init((options) => options.dsn = Secrets.sentryDSN,
      appRunner: () => runApp(ProviderScope(
              overrides: <Override>[
                sharedPreferencesServiceProvider.overrideWithValue(
                  SharedPreferencesService(sharedPreferences),
                ),
                // notificationServiceProvider
                //     .overrideWithValue(NotificationService(notificationPlugin))
              ],
              child: EasyLocalization(
                supportedLocales: const <Locale>[
                  Locale('en', 'GB'),
                  Locale('de', 'DE')
                ],
                path: 'assets/translations',
                fallbackLocale: const Locale('en', 'GB'),
                useOnlyLangCode: true,
                useFallbackTranslations: true,
                child: MyApp(),
              ))));
}

class MyApp extends HookWidget {
  final AppRouter appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final bool lightModeEnabled = useProvider(appThemeStateNotifier);

    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: AppTheme.lightTheme(context),
      darkTheme: AppTheme.darkTheme(context),
      themeMode: lightModeEnabled ? ThemeMode.light : ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
