import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'personal_form_state.freezed.dart';

@freezed
class PersonalFormState with _$PersonalFormState {
  const factory PersonalFormState({
    required AutovalidateMode showErrorMessages,
    required GlobalKey<FormState> formKey,
    required bool isRunning,
    required int executions,
  }) = _PersonalFormState;

  factory PersonalFormState.initial() => PersonalFormState(
        showErrorMessages: AutovalidateMode.disabled,
        formKey: GlobalKey<FormState>(),
        isRunning: false,
        executions: 0,
      );
}
