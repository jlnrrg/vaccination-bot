import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:readmore/readmore.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:vaccination_bot/application/bot_settings_form/bot_settings_form_notifier.dart';
import 'package:vaccination_bot/application/personal_form/personal_form_notifier.dart';
import 'package:vaccination_bot/view/components/flat_card.dart';
import 'package:vaccination_bot/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:vaccination_bot/view/widgets/modal/modal_fit.dart';
import 'package:vaccination_bot/view/widgets/personal/advanced_form.dart';
import 'package:vaccination_bot/view/widgets/fab.dart';
import 'package:vaccination_bot/view/settings/theme_data.dart';
import 'package:vaccination_bot/view/widgets/personal/formfields/birthday_form.dart';
import 'package:vaccination_bot/view/widgets/personal/formfields/postal_form.dart';
import 'package:vaccination_bot/view/widgets/loading.dart';
import 'package:vaccination_bot/view/widgets/botSettings/settings_form.dart';
import 'package:vaccination_bot/view/widgets/appbar.dart';
import 'package:vaccination_bot/view/widgets/personal/formfields/vaccinationgroup_form.dart';

final homepageScaffoldKey = GlobalKey<ScaffoldState>();

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  EdgeInsets get defaultPadding => const EdgeInsets.all(20);

  @override
  Widget build(BuildContext context) {
    final AutovalidateMode autovalidateModePersonal = useProvider(
        personalFormProvider.select((value) => value.showErrorMessages));
    final GlobalKey<FormState> formKeyPersonal =
        useProvider(personalFormProvider.select((value) => value.formKey));

    final AutovalidateMode autovalidateModeBotSettings = useProvider(
        botSettingsProvider.select((value) => value.showErrorMessages));
    final GlobalKey<FormState> formKeyBotSettings =
        useProvider(botSettingsProvider.select((value) => value.formKey));

    return SafeArea(
        child: Scaffold(
            key: homepageScaffoldKey,
            appBar: AppBar(
              title: Text(LocaleKeys.homePageTitle.tr()),
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
            ).withBottomAdmobBanner(context),
            body: Stack(children: [
              ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  ReadMoreText(LocaleKeys.introduction.tr(),
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: LocaleKeys.readmoretext_more.tr(),
                      trimExpandedText: LocaleKeys.readmoretext_less.tr(),
                      style: Theme.of(context).textTheme.bodyText2),
                  const SizedBox(height: 20),
                  Form(
                    key: formKeyPersonal,
                    autovalidateMode: autovalidateModePersonal,
                    child: Column(
                      children: [
                        FlatCard(
                            padding: defaultPadding,
                            child: const BirthdayForm()),
                        const SizedBox(height: 20),
                        FlatCard(
                            padding: defaultPadding, child: const PostalForm()),
                        // const SizedBox(height: 20),
                        // const FlatCard(
                        //     // label: LocaleKeys.vaccinationGroup_label.tr(),
                        //     child: VaccinationGroupForm()),
                        const SizedBox(height: 20),
                        const FlatCard(child: AdvancedForm()),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Form(
                    key: formKeyBotSettings,
                    autovalidateMode: autovalidateModeBotSettings,
                    child: const FlatCard(child: SettingsForm()),
                  ),
                  const SizedBox(height: 70),
                ],
              ),
              const Loading(),
            ]),
            floatingActionButton: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                FloatingActionButton(
                    foregroundColor: Colors.white,
                    onPressed: () => showCupertinoModalBottomSheet<void>(
                          expand: false,
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (context) => const ModalFit(),
                        ),
                    child: const Icon(FontAwesomeIcons.ellipsisH)),
                const SizedBox(width: 10),
                const FAB(),
              ],
            )));
  }
}
