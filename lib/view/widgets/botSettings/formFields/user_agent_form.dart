import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/application/bot_settings_form/bot_settings_form_notifier.dart';
import 'package:vaccination_bot/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';

class UserAgentForm extends HookWidget {
  const UserAgentForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = useProvider(
        botSettingsProvider.select((value) => value.settings.userAgent));
    return TextFormField(
      initialValue: value,
      decoration: InputDecoration(
        isDense: true,
        filled: false,
        labelText: LocaleKeys.botSettingsLabel_userAgent.tr(),
      ),
      onSaved: (String? value) =>
          context.read(botSettingsProvider.notifier).userAgentChanged(value),
      textInputAction: TextInputAction.done,
    );
  }
}
