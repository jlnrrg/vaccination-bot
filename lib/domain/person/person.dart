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
    String? streetNr,
    String? phone,
  }) = _PersonalFormState;

  const Person._();

  factory Person.initial() => const Person();

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  String toJSVars() {
    final DateFormat dateFormat = DateFormat('dd.MM.yyyy');

    final birthdayLocal = birthday?.getOrNull();
    final postalLocal = postal?.getOrNull();

    return [
      if (email != null) 'let email = "$email"',
      if (birthdayLocal != null)
        'let birthday = "${dateFormat.format(birthdayLocal)}"',
      if (postalLocal != null) 'let postal = "$postalLocal"',
      if (firstName != null) 'let firstName = "$firstName"',
      if (lastName != null) 'let lastName = "$lastName"',
      if (street != null) 'let street = "$street"',
      if (streetNr != null) 'let streetNr = "${streetNr.toString()}"',
      if (phone != null) 'let phone = "0${phone.toString()}"',
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
