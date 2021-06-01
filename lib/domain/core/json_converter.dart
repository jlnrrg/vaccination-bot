import 'package:vaccination_bot/domain/person/value_objects.dart';

Birthday? birthdayFromJson(String? value) =>
    value == null ? null : Birthday(DateTime.parse(value));
String? birthdayToJson(Birthday? value) =>
    value?.getOrNull()?.toIso8601String();

Postal? postalFromJson(String? value) => value == null ? null : Postal(value);
String? postalToJson(Postal? value) => value?.getOrNull();
