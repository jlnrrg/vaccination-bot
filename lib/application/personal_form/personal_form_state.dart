import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/domain/person.dart';

part 'personal_form_state.freezed.dart';

@freezed
class PersonalFormState with _$PersonalFormState {
  const factory PersonalFormState({
    required AutovalidateMode showErrorMessages,
    required GlobalKey<FormState> formKey,
    required Person person,
  }) = _PersonalFormState;

  factory PersonalFormState.initial(Person? person) => PersonalFormState(
      showErrorMessages: AutovalidateMode.disabled,
      formKey: GlobalKey<FormState>(),
      person: person ?? Person.initial());
}
