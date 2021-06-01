import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vaccination_bot/application/background/background_task_notifier.dart';
import 'package:vaccination_bot/application/notification/notification_service.dart';
import 'package:vaccination_bot/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:vaccination_bot/view/pages/home_page.dart';
import 'package:vaccination_bot/view/router/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ModalFit extends StatelessWidget {
  const ModalFit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SafeArea(
      top: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
              title: Text(LocaleKeys.modal_notification.tr()),
              leading: const Icon(FontAwesomeIcons.comment),
              onTap: () async {
                await context
                    .read(notificationServiceProvider)
                    .showNotification((_) async {
                  final ctx = homepageScaffoldKey.currentContext;
                  if (ctx != null) {
                    await AutoRouter.of(ctx).push(const WebViewPageRoute());
                  }
                });
                await AutoRouter.of(context).pop();
              }),
          ListTile(
              title: Text(LocaleKeys.modal_webview.tr()),
              leading: const Icon(FontAwesomeIcons.internetExplorer),
              onTap: () async {
                await AutoRouter.of(context).push(const WebViewPageRoute());
                await AutoRouter.of(context).pop();
              }),
          ListTile(
              title: Text(LocaleKeys.modal_backgroundTest.tr()),
              leading: const Icon(FontAwesomeIcons.cogs),
              onTap: () async {
                await context
                    .read(backgroundTaskProvider.notifier)
                    .toggleBackgroundTest(() async {
                  final ctx = homepageScaffoldKey.currentContext;
                  if (ctx != null) {
                    await AutoRouter.of(ctx).push(const WebViewPageRoute());
                  }
                });
                await AutoRouter.of(context).pop();
              }),
        ],
      ),
    ));
  }
}
