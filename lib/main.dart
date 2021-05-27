import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:impftermin/view/home_page.dart';
import 'package:impftermin/view/settings/theme_data.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(ProviderScope(
      child: EasyLocalization(
    supportedLocales: const <Locale>[Locale('en', 'GB'), Locale('de', 'DE')],
    path: 'assets/translations',
    fallbackLocale: const Locale('en', 'GB'),
    useOnlyLangCode: true,
    useFallbackTranslations: true,
    child: MyApp(),
  )));
}

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final bool lightModeEnabled = useProvider(appThemeStateNotifier);

    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: AppTheme.lightTheme(context),
      darkTheme: AppTheme.darkTheme(context),
      themeMode: lightModeEnabled ? ThemeMode.light : ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
