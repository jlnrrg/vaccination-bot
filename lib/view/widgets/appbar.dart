import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vaccination_bot/view/widgets/ads/banner_ad.dart';

extension AppBarX on AppBar {
  PreferredSizeWidget withBottomAdmobBanner(BuildContext context) {
    return _AppBarWithBannerAd(
      appBar: this,
      size: MediaQuery.of(context).size,
    );
  }
}

class _AppBarWithBannerAd extends StatelessWidget
    implements PreferredSizeWidget {
  const _AppBarWithBannerAd(
      {Key? key, required this.appBar, required this.size})
      : super(key: key);

  final AppBar appBar;
  final Size size;

  @override
  Size get preferredSize =>
      Size.fromHeight(appBar.preferredSize.height + height);

  double get height => max(size.height, 50.0);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min, children: [appBar, BannerAdWidget()]);
  }
}
