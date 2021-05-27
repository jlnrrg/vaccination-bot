// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod/riverpod.dart';

class AppTheme {
  // Private Constructor
  AppTheme._();

  static FlexScheme usedFlexScheme = FlexScheme.brandBlue;
  static FlexSurface flexSurface = FlexSurface.light;

  static ThemeData lightTheme(BuildContext context) {
    final ThemeData baseTheme = FlexColorScheme.light(
      scheme: usedFlexScheme,
      surfaceStyle: flexSurface,
    ).toTheme;
    return baseTheme.copyWith(
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        textTheme: GoogleFonts.firaSansTextTheme(baseTheme.textTheme),
        scaffoldBackgroundColor: baseTheme.scaffoldBackgroundColor
            .blend(baseTheme.primaryColorLight),
        toggleableActiveColor: baseTheme.accentColor,
        floatingActionButtonTheme: baseTheme.floatingActionButtonTheme
            .copyWith(backgroundColor: baseTheme.accentColor));
  }

  static ThemeData darkTheme(BuildContext context) {
    final ThemeData baseTheme =
        FlexColorScheme.dark(scheme: usedFlexScheme, surfaceStyle: flexSurface)
            .toTheme;

    return baseTheme.copyWith(
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        textTheme: GoogleFonts.firaSansTextTheme(baseTheme.textTheme),
        scaffoldBackgroundColor:
            baseTheme.scaffoldBackgroundColor.blend(baseTheme.primaryColorDark),
        toggleableActiveColor: baseTheme.accentColor,
        floatingActionButtonTheme: baseTheme.floatingActionButtonTheme
            .copyWith(backgroundColor: baseTheme.accentColor));
  }
}

class AppThemeState extends StateNotifier<bool> {
  AppThemeState() : super(true);

  void changeTheme() => state ^= true;

  void setLightTheme() => state = true;
  void setDarkTheme() => state = false;
}

final StateNotifierProvider<AppThemeState, bool> appThemeStateNotifier =
    StateNotifierProvider<AppThemeState, bool>(
        (ProviderReference ref) => AppThemeState());
