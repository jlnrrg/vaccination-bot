import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vaccination_bot/domain/bot_settings.dart';

part 'bot_settings_form_state.freezed.dart';

@freezed
class BotSettingsFormState with _$BotSettingsFormState {
  const factory BotSettingsFormState({
    required BotSettings settings,
    @JsonKey(ignore: true) required AutovalidateMode showErrorMessages,
    @JsonKey(ignore: true) required GlobalKey<FormState> formKey,
  }) = _BotSettingsFormState;

  factory BotSettingsFormState.initial(BotSettings? settings) =>
      BotSettingsFormState(
        settings: settings ?? BotSettings.initial(),
        showErrorMessages: AutovalidateMode.disabled,
        formKey: GlobalKey<FormState>(),
      );
}
