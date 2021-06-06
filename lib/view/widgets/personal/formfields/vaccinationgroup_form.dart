// 🐦 Flutter imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/application/personal_form/personal_form_notifier.dart';
import 'package:vaccination_bot/domain/person/value_unions.dart';

// 🌎 Project imports:
import 'package:vaccination_bot/generated/codegen_loader.g.dart';

class VaccinationGroupForm extends HookWidget {
  const VaccinationGroupForm({Key? key}) : super(key: key);

  Future<void> _showDialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text(LocaleKeys.vaccinationGroup_select.tr()),
          children: <Widget>[
            ListTile(
                visualDensity: VisualDensity.compact,
                leading: Icon(const Group.job().toIcon()),
                title: Text(const Group.job().toString()),
                onTap: () async {
                  await context
                      .read(personalFormProvider.notifier)
                      .groupChanged(const Group.job());
                  AutoRouter.of(context).pop();
                }),
            ListTile(
                visualDensity: VisualDensity.compact,
                leading: Icon(const Group.medicalOrElse().toIcon()),
                title: Text(const Group.medicalOrElse().toString()),
                onTap: () async {
                  await context
                      .read(personalFormProvider.notifier)
                      .groupChanged(const Group.medicalOrElse());
                  AutoRouter.of(context).pop();
                }),
            ListTile(
                visualDensity: VisualDensity.compact,
                leading: Icon(const Group.none().toIcon()),
                title: Text(const Group.none().toString()),
                onTap: () async {
                  await context
                      .read(personalFormProvider.notifier)
                      .groupChanged(const Group.none());
                  AutoRouter.of(context).pop();
                }),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final initialValue =
        useProvider(personalFormProvider.select((value) => value.person.group));

    return ListTile(
        leading: initialValue == null ? null : Icon(initialValue.toIcon()),
        minLeadingWidth: 0,
        title: initialValue == null
            ? Text(LocaleKeys.vaccinationGroup_select.tr(),
                style: TextStyle(
                    color: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.color
                        ?.withOpacity(0.5)))
            : Text(initialValue.toString()),
        trailing: const Icon(FontAwesomeIcons.caretRight),
        onTap: () => _showDialog(context));
  }
}
