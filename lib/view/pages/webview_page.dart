import 'dart:collection';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vaccination_bot/application/background/background_task_notifier.dart';

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
      ),
      android: AndroidInAppWebViewOptions(
        useHybridComposition: true,
      ),
      ios: IOSInAppWebViewOptions(
        allowsInlineMediaPlayback: true,
      ));

  late PullToRefreshController pullToRefreshController;
  String url = '';
  double progress = 0;

  late Future<String?> script;

  @override
  void initState() {
    super.initState();
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
    script = context.read(backgroundTaskProvider.notifier).getJS();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> runJS() async {
    final js = await context.read(backgroundTaskProvider.notifier).getJS();
    if (js != null) {
      webViewController?.evaluateJavascript(source: js);
    }
  }

  @override
  Widget build(BuildContext context) {
    final script = context.read(backgroundTaskProvider.notifier).getJS();

    return WillPopScope(
        onWillPop: () async => true,
        child: SafeArea(
          child: Scaffold(
              appBar: AppBar(title: Text('WebView'), actions: [
                IconButton(
                    onPressed: () => runJS(),
                    icon: const Icon(FontAwesomeIcons.scroll)),
                FutureBuilder(
                    future: webViewController?.canGoBack(),
                    builder:
                        (BuildContext context, AsyncSnapshot<bool> snapshot) {
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
                    builder:
                        (BuildContext context, AsyncSnapshot<bool> snapshot) {
                      if (snapshot.hasData && snapshot.data!) {
                        return IconButton(
                            icon: const Icon(FontAwesomeIcons.angleRight),
                            onPressed: () => webViewController?.goForward());
                      }
                      return const IconButton(
                          icon: Icon(FontAwesomeIcons.angleRight),
                          onPressed: null);
                    }),
              ]),
              body: Stack(children: [
                FutureBuilder<String?>(
                    future: script,
                    builder: (BuildContext context,
                        AsyncSnapshot<String?> snapshot) {
                      if (snapshot.hasData) {
                        return InAppWebView(
                          key: webViewKey,
                          pullToRefreshController: pullToRefreshController,
                          initialUrlRequest: URLRequest(
                              url: Uri.parse(
                                  'https://www.impfportal-niedersachsen.de/portal/#/appointment/public')),
                          initialUserScripts: UnmodifiableListView<UserScript>([
                            UserScript(
                                source: snapshot.data!,
                                injectionTime:
                                    UserScriptInjectionTime.AT_DOCUMENT_END)
                          ]),
                          onWebViewCreated: (controller) {
                            webViewController = controller;
                          },
                          initialOptions: InAppWebViewGroupOptions(
                              android: AndroidInAppWebViewOptions(
                                  useHybridComposition: true)),
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
