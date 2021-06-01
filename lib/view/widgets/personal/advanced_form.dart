import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vaccination_bot/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:vaccination_bot/view/widgets/personal/formfields/email_form.dart';
import 'package:vaccination_bot/view/widgets/personal/formfields/firstname_form.dart';
import 'package:vaccination_bot/view/widgets/personal/formfields/lastname_form.dart';
import 'package:vaccination_bot/view/widgets/personal/formfields/phone_form.dart';
import 'package:vaccination_bot/view/widgets/personal/formfields/street_form.dart';
import 'package:vaccination_bot/view/widgets/personal/formfields/gender_select.dart';

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
    return Column(children: [
      const _ListTile(),
      // man, woman, diverse
      const GenderSelect(),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: FocusScope(
            child: Column(children: const [
          FirstnameForm(),
          LastnameForm(),
          StreetForm(),
          PhoneForm(),
          EmailForm()
        ])),
      ),
    ]);
  }
}
