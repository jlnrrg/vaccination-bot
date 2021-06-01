import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/application/personal_form/personal_form_notifier.dart';
import 'package:vaccination_bot/domain/core/value_failure.dart';
import 'package:vaccination_bot/generated/codegen_loader.g.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class BirthdayForm extends HookWidget {
  const BirthdayForm({Key? key}) : super(key: key);

  DateFormat get dateFormat => DateFormat('dd.MM.yyyy');

  MaskTextInputFormatter get maskFormatter => MaskTextInputFormatter(
      mask: '##.##.####', filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    final FocusNode _node = useFocusNode();

    final birthday = useProvider(
        personalFormProvider.select((value) => value.person.birthday));

    final birthdayLocal = birthday?.getOrNull();

    return TextFormField(
      initialValue:
          birthdayLocal != null ? dateFormat.format(birthdayLocal) : null,
      maxLength: 10,
      inputFormatters: [maskFormatter],
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
        icon: const Icon(FontAwesomeIcons.birthdayCake),
        labelText: LocaleKeys.birthday_label.tr(),
        hintText: LocaleKeys.birthday_hint.tr(),
        counterText: '',
      ),
      validator: (_) {
        final value = context.read(personalFormProvider).person.birthday?.value;
        if (value == null) {
          return const ValueFailure<DateTime>.isNull().toString();
        } else {
          value.fold((l) => l.toString(), (_) => null);
        }
      },
      onSaved: (String? value) {
        if (value != null) {
          try {
            final data = dateFormat.parse(value);
            context.read(personalFormProvider.notifier).birthdayChanged(data);
          } on FormatException catch (_) {}
        }
      },
      textInputAction: TextInputAction.next,
      onEditingComplete: () => _node.nextFocus(),
      focusNode: _node,
    );
  }
}
