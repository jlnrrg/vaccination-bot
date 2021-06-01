import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:vaccination_bot/application/bot_settings_form/bot_settings_form_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';

class RepeatAfterSuccessForm extends HookWidget {
  const RepeatAfterSuccessForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = useProvider(botSettingsProvider
        .select((value) => value.settings.continueAfterSuccess));
    return CheckboxListTile(
        value: value,
        title: Text(LocaleKeys.botSettingsLabel_continueAfterSuccess.tr()),
        onChanged: (value) => context
            .read(botSettingsProvider.notifier)
            .continueAfterSuccessChanged(value));
  }
}
