import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/application/personal_form/personal_form_notifier.dart';
import 'package:vaccination_bot/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';

class FirstnameForm extends HookWidget {
  const FirstnameForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firstname = useProvider(
        personalFormProvider.select((value) => value.person.firstName));
    return TextFormField(
      initialValue: firstname,
      decoration: InputDecoration(
          isDense: true,
          filled: false,
          icon: const Icon(FontAwesomeIcons.user),
          labelText: LocaleKeys.firstname_label.tr(),
          hintText: LocaleKeys.lastname_hint.tr()),
      onSaved: (String? value) =>
          context.read(personalFormProvider.notifier).firstNameChanged(value),
    );
  }
}
