import 'package:auto_route/auto_route.dart';
import 'package:vaccination_bot/view/pages/home_page.dart';
import 'package:vaccination_bot/view/pages/webview_page.dart';

export 'router.gr.dart';

@MaterialAutoRouter(
    // generateNavigationHelperExtension: true,
    // ignore: always_specify_types
    routes: <AutoRoute>[
      AutoRoute<dynamic>(
        path: '/',
        initial: true,
        page: HomePage,
        fullscreenDialog: true,
      ),
      AutoRoute<dynamic>(
        page: WebViewPage,
        fullscreenDialog: true,
      ),
    ])
class $AppRouter {}
