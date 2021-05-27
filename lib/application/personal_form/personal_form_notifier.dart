import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:impftermin/application/personal_form/personal_form_state.dart';

final personalFormProvider =
    StateNotifierProvider<PersonalFormStateNotifier, PersonalFormState>(
        (ref) => PersonalFormStateNotifier());

class PersonalFormStateNotifier extends StateNotifier<PersonalFormState> {
  PersonalFormStateNotifier() : super(PersonalFormState.initial());

  Future<void> stopped() async {
    state = state.copyWith(isRunning: false);
  }

  Future<void> started() async {
    state.formKey.currentState?.save();
    state.formKey.currentState?.validate();

    state = state.copyWith(isRunning: true);
  }
}
