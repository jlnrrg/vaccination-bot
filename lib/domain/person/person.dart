import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vaccination_bot/domain/core/json_converter.dart';
import 'package:vaccination_bot/domain/core/value_failure.dart';
import 'package:vaccination_bot/domain/person/value_objects.dart';
import 'package:vaccination_bot/domain/person/value_unions.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
class Person with _$Person {
  const factory Person({
    String? email,
    @JsonKey(fromJson: birthdayFromJson, toJson: birthdayToJson)
        Birthday? birthday,
    @JsonKey(fromJson: postalFromJson, toJson: postalToJson) Postal? postal,
    Gender? gender,
    String? firstName,
    String? lastName,
    String? street,
    int? streetNr,
    int? phone,
  }) = _PersonalFormState;

  const Person._();

  factory Person.initial() => const Person();

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  String toJSVars() {
    DateFormat dateFormat = DateFormat('dd.MM.yyyy');

    final birthdayLocal = birthday?.getOrNull();
    final postalLocal = postal?.getOrNull();

    return [
      if (email != null) 'const email = "$email"',
      if (birthdayLocal != null)
        'const birthday = "${dateFormat.format(birthdayLocal)}"',
      if (postalLocal != null) 'const postal = "$postalLocal"',
      if (firstName != null) 'const firstName = "$firstName"',
      if (lastName != null) 'const lastName = "$lastName"',
      if (street != null) 'const street = "$street"',
      if (streetNr != null) 'const streetNr = "${streetNr.toString()}"',
      if (phone != null) 'const phone = "0${phone.toString()}"',
    ].join('\n');
  }

  Option<ValueFailure<dynamic>> get failureOption {
    // return first failure if one is found
    final Option<ValueFailure<dynamic>> returnOption =
        <Option<ValueFailure<dynamic>>>[
      birthday?.failureOrNoneOption ??
          some(const ValueFailure<String>.isNull()),
      postal?.failureOrNoneOption ??
          some(
            const ValueFailure<String>.isNull(),
          ),
    ].firstWhere((Option<ValueFailure<dynamic>> element) => element.isSome(),
            orElse: () => none());

    return returnOption;
  }
}
