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
}
