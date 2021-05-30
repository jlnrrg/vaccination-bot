import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => true,
        child: SafeArea(
          child: Scaffold(
              appBar: AppBar(title: Text('WebView'), actions: [
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
                InAppWebView(
                  key: webViewKey,
                  pullToRefreshController: pullToRefreshController,
                  initialUrlRequest: URLRequest(
                      url: Uri.parse(
                          'https://www.impfportal-niedersachsen.de/portal/#/appointment/public')),
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
                ),
              ])),
        ));
  }
}
