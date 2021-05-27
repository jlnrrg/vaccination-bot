import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:impftermin/domain/value_unions.dart';

part 'person.freezed.dart';

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

  factory Person.initial() => Person();
}
