import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/application/bot_settings_form/bot_settings_form_notifier.dart';
import 'package:vaccination_bot/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';

class AfterFailedRequestForm extends HookWidget {
  const AfterFailedRequestForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FocusNode _node = useFocusNode();
    final value = useProvider(botSettingsProvider
        .select((value) => value.settings.afterFailedRequest));
    return TextFormField(
      initialValue: value.toString(),
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
        isDense: true,
        filled: false,
        labelText: LocaleKeys.botSettingsLabel_afterFailedRequest.tr(),
        suffixText: LocaleKeys.units_seconds.tr(),
      ),
      onSaved: (String? value) => context
          .read(botSettingsProvider.notifier)
          .afterFailedRequestChanged(
              value != null ? int.tryParse(value) : null),
      textInputAction: TextInputAction.next,
      onEditingComplete: () => _node.nextFocus(),
      focusNode: _node,
    );
  }
}
