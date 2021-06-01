import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vaccination_bot/domain/value_unions.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
class Person with _$Person {
  const factory Person({
    String? email,
    DateTime? birthday,
    int? postal,
    Gender? gender,
    String? firstName,
    String? lastName,
    String? street,
    int? streetNr,
    String? city,
    int? phone,
  }) = _PersonalFormState;

  const Person._();

  factory Person.initial() => const Person();

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  String toJSVars() {
    DateFormat dateFormat = DateFormat('dd.MM.yyyy');

    return [
      if (email != null) 'const email = "$email"',
      if (birthday != null)
        'const birthday = "${dateFormat.format(birthday!)}"',
      if (postal != null) 'const postal = "$postal"',
      if (firstName != null) 'const firstName = "$firstName"',
      if (lastName != null) 'const lastName = "$lastName"',
      if (street != null) 'const street = "$street"',
      if (streetNr != null) 'const streetNr = "${streetNr.toString()}"',
      if (phone != null) 'const phone = "0${phone.toString()}"',
    ].join('\n');
  }
}
