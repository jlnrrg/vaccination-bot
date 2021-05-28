// 📦 Package imports:
import 'dart:convert';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/domain/person.dart';
import 'package:shared_preferences/shared_preferences.dart';

final Provider<SharedPreferencesService> sharedPreferencesServiceProvider =
    Provider<SharedPreferencesService>(
        (ProviderReference ref) => throw UnimplementedError());

class SharedPreferencesService {
  SharedPreferencesService(this.sharedPreferences);
  final SharedPreferences sharedPreferences;

  static const String personalInformationKey = 'personalInformation';

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
}
