import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/application/personal_form/personal_form_notifier.dart';
import 'package:vaccination_bot/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';

class PhoneForm extends HookWidget {
  const PhoneForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FocusNode _node = useFocusNode();
    final phone =
        useProvider(personalFormProvider.select((value) => value.person.phone));
    return TextFormField(
      initialValue: phone,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
          isDense: true,
          filled: false,
          icon: const Icon(FontAwesomeIcons.phone),
          labelText: LocaleKeys.phone_label.tr(),
          hintText: LocaleKeys.phone_hint.tr()),
      onSaved: (String? value) =>
          context.read(personalFormProvider.notifier).phoneChanged(value),
      textInputAction: TextInputAction.next,
      onEditingComplete: () => _node.nextFocus(),
      focusNode: _node,
    );
  }
}
