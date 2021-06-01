// 📦 Package imports:
import 'dart:convert';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/domain/bot_settings.dart';
import 'package:vaccination_bot/domain/person/person.dart';
import 'package:shared_preferences/shared_preferences.dart';

final Provider<SharedPreferencesService> sharedPreferencesServiceProvider =
    Provider<SharedPreferencesService>(
        (ProviderReference ref) => throw UnimplementedError());

class SharedPreferencesService {
  SharedPreferencesService(this.sharedPreferences);
  final SharedPreferences sharedPreferences;

  static const String personalInformationKey = 'personalInformation';
  static const String botSettingsKey = 'botSettings';
  static const String isLightThemeKey = 'lightTheme';

  Future<void> setPersonalInformation(Person person) async {
    final map = person.toJson();
    await sharedPreferences.setString(personalInformationKey, jsonEncode(map));
  }

  Person? getPersonalInformation() {
    final data = sharedPreferences.getString(personalInformationKey);
    if (data != null) {
      // ignore: avoid_as
      final map = jsonDecode(data) as Map<String, dynamic>;
      return Person.fromJson(map);
    }
    return null;
  }

  Future<void> setBotSettings(BotSettings botSettings) async {
    final map = botSettings.toJson();
    await sharedPreferences.setString(botSettingsKey, jsonEncode(map));
  }

  BotSettings? getBotSettings() {
    final data = sharedPreferences.getString(botSettingsKey);
    if (data != null) {
      // ignore: avoid_as
      final map = jsonDecode(data) as Map<String, dynamic>;
      return BotSettings.fromJson(map);
    }
    return null;
  }

  Future<void> setThemeSettings(bool value) async {
    await sharedPreferences.setBool(isLightThemeKey, value);
  }

  bool? getThemeSettings() {
    final data = sharedPreferences.getBool(isLightThemeKey);
    return data;
  }
}
