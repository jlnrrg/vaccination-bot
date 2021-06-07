import 'dart:collection';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:vaccination_bot/application/background/background_task_notifier.dart';
import 'package:vaccination_bot/application/downloader/downloader.dart';
import 'package:vaccination_bot/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:vaccination_bot/view/widgets/ads/interstitial_ad.dart';
import 'package:vaccination_bot/view/widgets/appbar.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({Key? key}) : super(key: key);

  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;
  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions(
          useShouldOverrideUrlLoading: true,
          mediaPlaybackRequiresUserGesture: false,
          useOnDownloadStart: true),
      android: AndroidInAppWebViewOptions(
        useHybridComposition: true,
      ),
      ios: IOSInAppWebViewOptions(
        allowsInlineMediaPlayback: true,
      ));

  late PullToRefreshController pullToRefreshController;
  String url = '';
  double progress = 0;

  late Logger logger;
  late Future<String?> script;

  final initialWebsite =
      'https://www.impfportal-niedersachsen.de/portal/#/appointment/public';

  late InterstitialAdWidget _interstitialAd;

  @override
  void initState() {
    super.initState();
    _interstitialAd = InterstitialAdWidget()..initialize();

    pullToRefreshController = PullToRefreshController(
      options: PullToRefreshOptions(
        color: Colors.blue,
      ),
      onRefresh: () async {
        if (Platform.isAndroid) {
          webViewController?.reload();
        } else if (Platform.isIOS) {
          webViewController?.loadUrl(
              urlRequest: URLRequest(url: await webViewController?.getUrl()));
        }
      },
    );
    script = context.read(backgroundTaskProvider.notifier).getInitialJS();
    logger = Logger(
      printer: PrettyPrinter(methodCount: 0, printTime: true),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _interstitialAd.dispose();
  }

  Future<void> runPersonalInfoJS() async {
    final js =
        await context.read(backgroundTaskProvider.notifier).getPersonalFormJS();
    if (js != null) {
      final dynamic result =
          await webViewController?.evaluateJavascript(source: js);
      logger.i(result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          _interstitialAd.show();
          return true;
        },
        child: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                  title: Text(LocaleKeys.webviewPageTitle.tr()),
                  actions: [
                    IconButton(
                        tooltip: LocaleKeys.runPersonalFormJS.tr(),
                        onPressed: () => runPersonalInfoJS(),
                        icon: const Icon(FontAwesomeIcons.scroll)),
                    FutureBuilder(
                        future: webViewController?.canGoBack(),
                        builder: (BuildContext context,
                            AsyncSnapshot<bool> snapshot) {
                          if (snapshot.hasData && snapshot.data!) {
                            return IconButton(
                                icon: const Icon(FontAwesomeIcons.angleLeft),
                                onPressed: () => webViewController?.goBack());
                          }
                          return const IconButton(
                              icon: Icon(FontAwesomeIcons.angleLeft),
                              onPressed: null);
                        }),
                    FutureBuilder(
                        future: webViewController?.canGoForward(),
                        builder: (BuildContext context,
                            AsyncSnapshot<bool> snapshot) {
                          if (snapshot.hasData && snapshot.data!) {
                            return IconButton(
                                icon: const Icon(FontAwesomeIcons.angleRight),
                                onPressed: () =>
                                    webViewController?.goForward());
                          }
                          return const IconButton(
                              icon: Icon(FontAwesomeIcons.angleRight),
                              onPressed: null);
                        }),
                  ]).withBottomAdmobBanner(context),
              body: Stack(children: [
                FutureBuilder<String?>(
                    future: script,
                    builder: (BuildContext context,
                        AsyncSnapshot<String?> snapshot) {
                      if (snapshot.hasData) {
                        return InAppWebView(
                          key: webViewKey,
                          pullToRefreshController: pullToRefreshController,
                          initialOptions: options,
                          initialUrlRequest:
                              URLRequest(url: Uri.parse(initialWebsite)),
                          initialUserScripts: UnmodifiableListView<UserScript>([
                            UserScript(
                                source: snapshot.data!,
                                injectionTime:
                                    UserScriptInjectionTime.AT_DOCUMENT_END)
                          ]),
                          onWebViewCreated: (controller) {
                            webViewController = controller;
                          },
                          onDownloadStart: (controller, url) async {
                            final provider = context.read(downloaderProvider);
                            if (await provider.requestPermission()) {
                              await provider.requestDownload(url.toString());
                            }
                          },
                          androidOnPermissionRequest:
                              (controller, origin, resources) async {
                            return PermissionRequestResponse(
                                resources: resources,
                                action: PermissionRequestResponseAction.GRANT);
                          },
                          onLoadStop: (controller, url) async {
                            pullToRefreshController.endRefreshing();
                            setState(() {
                              this.url = url.toString();
                            });
                          },
                          onLoadError: (controller, url, code, message) {
                            pullToRefreshController.endRefreshing();
                          },
                          onProgressChanged: (controller, progress) {
                            if (progress == 100) {
                              pullToRefreshController.endRefreshing();
                            }
                            setState(() {
                              this.progress = progress / 100;
                            });
                          },
                        );
                      } else {
                        return const CircularProgressIndicator();
                      }
                    })
              ])),
        ));
  }
}
