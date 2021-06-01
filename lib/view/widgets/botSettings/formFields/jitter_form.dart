import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/application/bot_settings_form/bot_settings_form_notifier.dart';
import 'package:vaccination_bot/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';

class JitterForm extends HookWidget {
  const JitterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FocusNode _node = useFocusNode();
    final jitter = useProvider(
        botSettingsProvider.select((value) => value.settings.jitter));
    return TextFormField(
      initialValue: jitter.toString(),
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
        isDense: true,
        filled: false,
        labelText: LocaleKeys.botSettingsLabel_jitter.tr(),
        suffixText: LocaleKeys.units_seconds.tr(),
      ),
      onSaved: (String? value) => context
          .read(botSettingsProvider.notifier)
          .jitterChanged(value != null ? int.tryParse(value) : null),
      textInputAction: TextInputAction.next,
      onEditingComplete: () => _node.nextFocus(),
      focusNode: _node,
    );
  }
}
