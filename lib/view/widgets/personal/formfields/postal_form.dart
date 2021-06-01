import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/application/personal_form/personal_form_notifier.dart';
import 'package:vaccination_bot/domain/core/value_failure.dart';
import 'package:vaccination_bot/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';

class PostalForm extends HookWidget {
  const PostalForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FocusNode _node = useFocusNode();
    final postal = useProvider(
        personalFormProvider.select((value) => value.person.postal));

    return TextFormField(
      initialValue: postal?.getOrNull(),
      maxLength: 5,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
        icon: const Icon(FontAwesomeIcons.mapMarkerAlt),
        labelText: LocaleKeys.postal_label.tr(),
        hintText: LocaleKeys.postal_hint.tr(),
        counterText: '',
      ),
      validator: (_) {
        final value = context.read(personalFormProvider).person.postal?.value;
        if (value == null) {
          return const ValueFailure<String>.isNull().toString();
        } else {
          value.fold((l) => l.toString(), (_) => null);
        }
      },
      onSaved: (String? value) =>
          context.read(personalFormProvider.notifier).postalChanged(value),
      textInputAction: TextInputAction.done,
      focusNode: _node,
    );
  }
}
