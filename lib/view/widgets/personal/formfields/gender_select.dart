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

class GenderSelect extends HookWidget {
  const GenderSelect({Key? key}) : super(key: key);

  Future<void> _showDialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text(LocaleKeys.gender_select.tr()),
          children: <Widget>[
            ListTile(
                visualDensity: VisualDensity.compact,
                leading: Icon(const Gender.male().toIcon()),
                title: Text(const Gender.male().toString()),
                onTap: () async {
                  await context
                      .read(personalFormProvider.notifier)
                      .genderChanged(const Gender.male());
                  AutoRouter.of(context).pop();
                }),
            ListTile(
                visualDensity: VisualDensity.compact,
                leading: Icon(const Gender.female().toIcon()),
                title: Text(const Gender.female().toString()),
                onTap: () async {
                  await context
                      .read(personalFormProvider.notifier)
                      .genderChanged(const Gender.female());
                  AutoRouter.of(context).pop();
                }),
            ListTile(
                visualDensity: VisualDensity.compact,
                leading: Icon(const Gender.diverse().toIcon()),
                title: Text(const Gender.diverse().toString()),
                onTap: () async {
                  await context
                      .read(personalFormProvider.notifier)
                      .genderChanged(const Gender.diverse());
                  AutoRouter.of(context).pop();
                }),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final initialValue = useProvider(
        personalFormProvider.select((value) => value.person.gender));

    return ListTile(
        leading: initialValue == null ? null : Icon(initialValue.toIcon()),
        minLeadingWidth: 0,
        title: initialValue == null
            ? Text(LocaleKeys.gender_select.tr(),
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
