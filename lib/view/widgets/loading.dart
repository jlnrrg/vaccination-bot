import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/application/background/background_task_notifier.dart';
import 'package:vaccination_bot/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';

class Loading extends HookWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final executions = useProvider(backgroundTaskProvider);

    return executions != null
        ? Center(
            child: Material(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).canvasColor,
                child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: executions.map(
                          data: (data) => [
                            const CircularProgressIndicator(),
                            const SizedBox(height: 20),
                            Text(LocaleKeys.loadingExecutions
                                .plural(data.value)),
                          ],
                          loading: (_) => [const CircularProgressIndicator()],
                          error: (_) => [const Text('An Error Occured')],
                        )))))
        : Container();
  }
}
