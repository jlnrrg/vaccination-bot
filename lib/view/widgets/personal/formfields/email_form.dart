import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/application/personal_form/personal_form_notifier.dart';
import 'package:vaccination_bot/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';

class EmailForm extends HookWidget {
  const EmailForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final email =
        useProvider(personalFormProvider.select((value) => value.person.email));
    return TextFormField(
      initialValue: email,
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
          isDense: true,
          filled: false,
          icon: const Icon(FontAwesomeIcons.envelope),
          labelText: LocaleKeys.email_label.tr(),
          hintText: LocaleKeys.email_hint.tr()),
      onSaved: (String? value) =>
          context.read(personalFormProvider.notifier).emailChanged(value),
    );
  }
}
