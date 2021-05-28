import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/application/personal_form/personal_form_notifier.dart';
import 'package:vaccination_bot/generated/codegen_loader.g.dart';

class BirthdayForm extends HookWidget {
  const BirthdayForm({Key? key}) : super(key: key);

  DateFormat get dateFormat => DateFormat('dd.MM.yyyy');

  @override
  Widget build(BuildContext context) {
    final birthday = useProvider(
        personalFormProvider.select((value) => value.person.birthday));

    return TextFormField(
        initialValue: birthday != null ? dateFormat.format(birthday) : null,
        maxLength: 10,
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          icon: const Icon(FontAwesomeIcons.birthdayCake),
          labelText: LocaleKeys.birthday_label.tr(),
          hintText: LocaleKeys.birthday_hint.tr(),
          counterText: '',
        ),
        onSaved: (String? value) {
          if (value != null) {
            try {
              final data = dateFormat.parse(value);
              context.read(personalFormProvider.notifier).birthdayChanged(data);
            } on FormatException catch (_) {}
          }
        });
  }
}
