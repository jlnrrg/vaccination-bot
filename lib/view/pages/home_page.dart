import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:impftermin/application/personal_form/personal_form_notifier.dart';
import 'package:impftermin/view/components/flat_card.dart';
import 'package:impftermin/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:impftermin/view/widgets/advanced_form.dart';
import 'package:impftermin/view/widgets/fab.dart';
import 'package:impftermin/view/settings/theme_data.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  EdgeInsets get defaultPadding => const EdgeInsets.all(20);

  @override
  Widget build(BuildContext context) {
    final state = useProvider(personalFormProvider);
    final AutovalidateMode autovalidateMode = state.showErrorMessages;
    final GlobalKey<FormState> formKey = state.formKey;
    final bool isRunning = state.isRunning;
    final int executions = state.executions;

    final List<Widget> widgetList = [
      Text(LocaleKeys.introduction.tr()),
      FlatCard(
          padding: defaultPadding,
          child: TextFormField(
            maxLength: 10,
            keyboardType: TextInputType.datetime,
            decoration: InputDecoration(
              icon: const Icon(FontAwesomeIcons.birthdayCake),
              labelText: LocaleKeys.birthday_label.tr(),
              hintText: LocaleKeys.birthday_hint.tr(),
              counterText: '',
            ),
          )),
      FlatCard(
          padding: defaultPadding,
          child: TextFormField(
            maxLength: 5,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              icon: const Icon(FontAwesomeIcons.mapMarkerAlt),
              labelText: LocaleKeys.postal_label.tr(),
              hintText: LocaleKeys.postal_hint.tr(),
              counterText: '',
            ),
          )),
      const FlatCard(child: AdvancedForm()),
    ];

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(LocaleKeys.appBarTitle.tr()),
              actions: [
                Consumer(
                    builder: (BuildContext context, ScopedReader watch, _) {
                  final lightTheme = watch(appThemeStateNotifier);

                  return IconButton(
                      icon: lightTheme
                          ? const Icon(FontAwesomeIcons.sun)
                          : const Icon(FontAwesomeIcons.moon),
                      onPressed: () => context
                          .read(appThemeStateNotifier.notifier)
                          .changeTheme());
                })
              ],
            ),
            body: Stack(children: [
              Form(
                  key: formKey,
                  autovalidateMode: autovalidateMode,
                  child: ListView.separated(
                      padding: const EdgeInsets.all(20),
                      itemBuilder: (context, index) => widgetList[index],
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 10),
                      itemCount: widgetList.length)),
              if (isRunning)
                Center(
                    child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).canvasColor,
                  child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        const CircularProgressIndicator(),
                        if (executions > 0) Text(executions.toString()),
                      ])),
                )),
            ]),
            floatingActionButton: const FAB()));
  }
}
