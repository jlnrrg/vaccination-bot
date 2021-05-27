import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:impftermin/application/personal_form/personal_form_notifier.dart';
import 'package:impftermin/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:impftermin/view/widgets/gender_select.dart';

class AdvancedForm extends StatelessWidget {
  const AdvancedForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: ScrollOnExpand(
            child: Expandable(
      collapsed: const _ListTile(),
      expanded: const _Expanded(),
    )));
  }
}

class _ListTile extends StatelessWidget {
  const _ListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = ExpandableController.of(context, required: true)!;
    return ListTile(
      onTap: () => controller.toggle(),
      title: Text(LocaleKeys.advancedInformation.tr()),
      trailing: ExpandableIcon(
        theme: const ExpandableThemeData(
            hasIcon: true,
            collapseIcon: FontAwesomeIcons.chevronUp,
            expandIcon: FontAwesomeIcons.chevronDown),
      ),
    );
  }
}

class _Expanded extends HookWidget {
  const _Expanded({Key? key, this.padding}) : super(key: key);

  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    final state =
        useProvider(personalFormProvider.select((value) => value.person));
    return Column(children: [
      const _ListTile(),
      // man, woman, diverse
      GenderSelect(
        initialValue: state.gender,
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(children: [
          // firstname
          TextFormField(
            initialValue: state.firstName,
            decoration: InputDecoration(
                isDense: true,
                filled: false,
                icon: const Icon(FontAwesomeIcons.user),
                labelText: LocaleKeys.firstname_label.tr(),
                hintText: LocaleKeys.lastname_hint.tr()),
            onSaved: (String? value) => context
                .read(personalFormProvider.notifier)
                .firstNameChanged(value),
          ),
          // lastname

          TextFormField(
            initialValue: state.lastName,
            decoration: InputDecoration(
                isDense: true,
                filled: false,
                icon: const Icon(FontAwesomeIcons.user),
                labelText: LocaleKeys.lastname_label.tr(),
                hintText: LocaleKeys.lastname_hint.tr()),
            onSaved: (String? value) => context
                .read(personalFormProvider.notifier)
                .lastNameChanged(value),
          ),
          // street
          Row(
            children: [
              Flexible(
                  flex: 2,
                  child: TextFormField(
                    initialValue: state.street,
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
                    initialValue: state.streetNr?.toString(),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        isDense: true,
                        filled: false,
                        labelText: LocaleKeys.streetnr_label.tr(),
                        hintText: LocaleKeys.streetnr_hint.tr()),
                    onSaved: (String? value) => context
                        .read(personalFormProvider.notifier)
                        .streetNrChanged(
                            value != null ? int.tryParse(value) : null),
                  )),
            ],
          ),

          // phone number
          TextFormField(
            initialValue: state.phone?.toString(),
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                isDense: true,
                filled: false,
                icon: const Icon(FontAwesomeIcons.phone),
                labelText: LocaleKeys.phone_label.tr(),
                hintText: LocaleKeys.phone_hint.tr()),
            onSaved: (String? value) => context
                .read(personalFormProvider.notifier)
                .streetNrChanged(value != null ? int.tryParse(value) : null),
          ),

          // email address
          TextFormField(
            initialValue: state.email,
            decoration: InputDecoration(
                isDense: true,
                filled: false,
                icon: const Icon(FontAwesomeIcons.envelope),
                labelText: LocaleKeys.email_label.tr(),
                hintText: LocaleKeys.email_hint.tr()),
            onSaved: (String? value) =>
                context.read(personalFormProvider.notifier).emailChanged(value),
          ),
        ]),
      ),
    ]);
  }
}
