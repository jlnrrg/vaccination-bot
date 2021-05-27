import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:impftermin/application/personal_form/personal_form_state.dart';
import 'package:impftermin/domain/person.dart';
import 'package:impftermin/domain/value_unions.dart';
import 'package:impftermin/model/shared_preferences_service.dart';

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
    state = state.copyWith(person: state.person.copyWith(firstName: value));
  }

  Future<void> lastNameChanged(String? value) async {
    state = state.copyWith(person: state.person.copyWith(lastName: value));
  }

  Future<void> emailChanged(String? value) async {
    state = state.copyWith(person: state.person.copyWith(email: value));
  }

  Future<void> birthdayChanged(DateTime? value) async {
    state = state.copyWith(person: state.person.copyWith(birthday: value));
  }

  Future<void> postalChanged(int? value) async {
    final String? city = await _getCityByPostal(value);

    state = state.copyWith(
        person: state.person.copyWith(postal: value, city: city));
  }

  Future<void> genderChanged(Gender? value) async {
    state = state.copyWith(person: state.person.copyWith(gender: value));
  }

  Future<void> streetChanged(String? value) async {
    state = state.copyWith(person: state.person.copyWith(street: value));
  }

  Future<void> streetNrChanged(int? value) async {
    state = state.copyWith(person: state.person.copyWith(streetNr: value));
  }

  Future<String?> _getCityByPostal(int? value) async {
    // TODO(jr): return city
    return null;
  }

  Future<void> phoneChanged(int? value) async {
    state = state.copyWith(person: state.person.copyWith(phone: value));
  }

  Future<void> stopped() async {
    state = state.copyWith(isRunning: false);
  }

  Future<void> started() async {
    state.formKey.currentState?.save();
    state.formKey.currentState?.validate();

    service.setPersonalInformation(state.person);

    state = state.copyWith(isRunning: true);
  }
}
