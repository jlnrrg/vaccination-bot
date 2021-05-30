import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/application/bot_settings_form/bot_settings_form_state.dart';
import 'package:vaccination_bot/domain/bot_settings.dart';
import 'package:vaccination_bot/model/shared_preferences_service.dart';

final botSettingsProvider =
    StateNotifierProvider<BotSettingsFormStateNotifier, BotSettingsFormState>(
        (ref) {
  final service = ref.watch(sharedPreferencesServiceProvider);
  return BotSettingsFormStateNotifier(service.getBotSettings(), service);
});

class BotSettingsFormStateNotifier extends StateNotifier<BotSettingsFormState> {
  BotSettingsFormStateNotifier(BotSettings? initialSettings, this.service)
      : super(BotSettingsFormState.initial(initialSettings));

  final SharedPreferencesService service;

  Future<void> userAgentChanged(String? value) async {
    if (value != null) {
      state =
          state.copyWith(settings: state.settings.copyWith(userAgent: value));
    }
  }

  Future<void> afterRequestChanged(int? value) async {
    if (value != null) {
      state = state.copyWith(
          settings: state.settings.copyWith(afterRequest: value));
    }
  }

  Future<void> afterSuccessChanged(int? value) async {
    if (value != null) {
      state = state.copyWith(
          settings: state.settings.copyWith(afterSuccess: value));
    }
  }

  Future<void> afterFailedRequestChanged(int? value) async {
    if (value != null) {
      state = state.copyWith(
          settings: state.settings.copyWith(afterFailedRequest: value));
    }
  }

  Future<void> afterIpBanChanged(int? value) async {
    if (value != null) {
      state =
          state.copyWith(settings: state.settings.copyWith(afterIpBan: value));
    }
  }

  Future<void> jitterChanged(int? value) async {
    if (value != null) {
      state = state.copyWith(settings: state.settings.copyWith(jitter: value));
    }
  }

  Future<void> saved() async {
    state.formKey.currentState?.save();
    service.setBotSettings(state.settings);
  }
}
