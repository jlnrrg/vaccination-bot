import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/application/personal_form/personal_form_state.dart';
import 'package:vaccination_bot/domain/person/person.dart';
import 'package:vaccination_bot/domain/person/value_objects.dart';
import 'package:vaccination_bot/domain/person/value_unions.dart';
import 'package:vaccination_bot/model/shared_preferences_service.dart';

final personalFormProvider =
    StateNotifierProvider<PersonalFormStateNotifier, PersonalFormState>((ref) {
  final service = ref.watch(sharedPreferencesServiceProvider);
  return PersonalFormStateNotifier(service.getPersonalInformation(), service);
});

class PersonalFormStateNotifier extends StateNotifier<PersonalFormState> {
  PersonalFormStateNotifier(Person? person, this.service)
      : super(PersonalFormState.initial(person));

  final SharedPreferencesService service;

  Future<void> firstNameChanged(String? value) async {
    state = state.copyWith(
        person: state.person.copyWith(firstName: value),
        saveFailureOrSuccessOption: none());
  }

  Future<void> lastNameChanged(String? value) async {
    state = state.copyWith(
        person: state.person.copyWith(lastName: value),
        saveFailureOrSuccessOption: none());
  }

  Future<void> emailChanged(String? value) async {
    state = state.copyWith(
        person: state.person.copyWith(email: value),
        saveFailureOrSuccessOption: none());
  }

  Future<void> birthdayChanged(DateTime? value) async {
    if (value != null) {
      state = state.copyWith(
          person: state.person.copyWith(birthday: Birthday(value)),
          saveFailureOrSuccessOption: none());
    }
  }

  Future<void> postalChanged(String? value) async {
    if (value != null) {
      state = state.copyWith(
          person: state.person.copyWith(postal: Postal(value)),
          saveFailureOrSuccessOption: none());
    }
  }

  Future<void> genderChanged(Gender? value) async {
    state = state.copyWith(
        person: state.person.copyWith(gender: value),
        saveFailureOrSuccessOption: none());
  }

  Future<void> streetChanged(String? value) async {
    state = state.copyWith(
        person: state.person.copyWith(street: value),
        saveFailureOrSuccessOption: none());
  }

  Future<void> streetNrChanged(String? value) async {
    state = state.copyWith(
        person: state.person.copyWith(streetNr: value),
        saveFailureOrSuccessOption: none());
  }

  Future<void> phoneChanged(String? value) async {
    state = state.copyWith(
        person: state.person.copyWith(phone: value),
        saveFailureOrSuccessOption: none());
  }

  Future<void> saved() async {
    state.formKey.currentState?.save();
    state.formKey.currentState?.validate();
    if (state.person.failureOption.isNone()) {
      state = state.copyWith(
        showErrorMessages: AutovalidateMode.onUserInteraction,
        saveFailureOrSuccessOption: none(),
      );
      service.setPersonalInformation(state.person);
    } else {
      state = state.copyWith(
        showErrorMessages: AutovalidateMode.onUserInteraction,
        saveFailureOrSuccessOption: some('why are you gae'),
      );
    }
  }
}
