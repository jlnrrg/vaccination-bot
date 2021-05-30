import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/application/personal_form/personal_form_notifier.dart';
import 'package:vaccination_bot/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';

class LastnameForm extends HookWidget {
  const LastnameForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lastname = useProvider(
        personalFormProvider.select((value) => value.person.lastName));
    return TextFormField(
      initialValue: lastname,
      decoration: InputDecoration(
          isDense: true,
          filled: false,
          icon: const Icon(FontAwesomeIcons.user),
          labelText: LocaleKeys.lastname_label.tr(),
          hintText: LocaleKeys.lastname_hint.tr()),
      onSaved: (String? value) =>
          context.read(personalFormProvider.notifier).lastNameChanged(value),
    );
  }
}
