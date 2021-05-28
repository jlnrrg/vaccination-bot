import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/application/background/background_task_notifier.dart';
import 'package:vaccination_bot/application/personal_form/personal_form_notifier.dart';
import 'package:vaccination_bot/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';

class FAB extends HookWidget {
  const FAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isRunning =
        useProvider(personalFormProvider.select((value) => value.isRunning));

    return isRunning
        ? FloatingActionButton(
            heroTag: 'process',
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            tooltip: LocaleKeys.stopProcess.tr(),
            onPressed: () async {
              await context.read(personalFormProvider.notifier).stopped();
              await context.read(backgroundTaskProvider.notifier).stopped();
            },
            child: const Icon(FontAwesomeIcons.times),
          )
        : FloatingActionButton(
            heroTag: 'process',
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            tooltip: LocaleKeys.startProcess.tr(),
            onPressed: () async {
              await context.read(personalFormProvider.notifier).started();
              await context.read(backgroundTaskProvider.notifier).started();
            },
            child: const Icon(FontAwesomeIcons.check),
          );
  }
}
