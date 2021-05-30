import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/application/personal_form/personal_form_notifier.dart';
import 'package:vaccination_bot/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';

class StreetForm extends HookWidget {
  const StreetForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final street = useProvider(
        personalFormProvider.select((value) => value.person.street));

    final streetNr = useProvider(
        personalFormProvider.select((value) => value.person.streetNr));

    return Row(
      children: [
        Flexible(
            flex: 2,
            child: TextFormField(
              initialValue: street,
              decoration: InputDecoration(
                  isDense: true,
                  filled: false,
                  icon: const Icon(FontAwesomeIcons.road),
                  labelText: LocaleKeys.street_label.tr(),
                  hintText: LocaleKeys.street_hint.tr()),
              onSaved: (String? value) => context
                  .read(personalFormProvider.notifier)
                  .streetChanged(value),
            )),
        const SizedBox(width: 20),
        // street nr
        Flexible(
            flex: 1,
            child: TextFormField(
              initialValue: streetNr?.toString(),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                  isDense: true,
                  filled: false,
                  labelText: LocaleKeys.streetnr_label.tr(),
                  hintText: LocaleKeys.streetnr_hint.tr()),
              onSaved: (String? value) => context
                  .read(personalFormProvider.notifier)
                  .streetNrChanged(value != null ? int.tryParse(value) : null),
            )),
      ],
    );
  }
}