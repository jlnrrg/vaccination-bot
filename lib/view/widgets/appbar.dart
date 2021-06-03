import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

extension AppBarX on AppBar {
  PreferredSizeWidget withBottomAdmobBanner(BuildContext context) {
    return AppBarWithAd(
      appBar: this,
      size: MediaQuery.of(context).size,
    );
  }
}

class AppBarWithAd extends StatefulWidget implements PreferredSizeWidget {
  const AppBarWithAd({Key? key, required this.appBar, required this.size})
      : super(key: key);
  final AppBar appBar;
  final Size size;

  @override
  _AppBarWithAdState createState() => _AppBarWithAdState();

  @override
  Size get preferredSize =>
      Size.fromHeight(appBar.preferredSize.height + height);

  double get height => max(size.height * .06, 50.0);
}

class _AppBarWithAdState extends State<AppBarWithAd> {
  static const AdRequest request = AdRequest(
    keywords: <String>['foo', 'bar'],
    contentUrl: 'http://foo.com/bar.html',
    nonPersonalizedAds: true,
  );

  late BannerAd bannerAd;
  bool isAdLoaded = false;
  bool failedToLoad = false;

  @override
  void initState() {
    bannerAd = BannerAd(
      adUnitId: '<ad unit id>',
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          print('$ad loaded');
          setState(() {
            failedToLoad = false;
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print('$BannerAd failedToLoad: $error');
          ad.dispose();

          setState(() {
            failedToLoad = true;
          });
        },
        onAdOpened: (Ad ad) => print('$BannerAd onAdOpened.'),
        onAdClosed: (Ad ad) => print('$BannerAd onAdClosed.'),
      ),
    );
    bannerAd.load();
    super.initState();
  }

  Future<void> createBanner() async {
    final AnchoredAdaptiveBannerAdSize? size =
        await AdSize.getAnchoredAdaptiveBannerAdSize(
      Orientation.portrait,
      widget.size.width.truncate(),
    );

    if (size == null) {
      print('Unable to get height of anchored banner.');
      return;
    }

    final BannerAd banner = BannerAd(
      size: size,
      request: request,
      adUnitId: Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716', // TODO(jr): this is a test ad id. Change to real one 'ca-app-pub-2920487000916843/9702325853'
      listener: BannerAdListener(
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print('$BannerAd failedToLoad: $error');
          ad.dispose();
        },
        onAdOpened: (Ad ad) => print('$BannerAd onAdOpened.'),
        onAdClosed: (Ad ad) => print('$BannerAd onAdClosed.'),
      ),
    );
    return banner.load();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    double height() => max(size.height * .06, 50.0);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        widget.appBar,
        if (!failedToLoad)
          Container(
              width: size.width,
              height: height(),
              child: Builder(builder: (BuildContext context) {
                if (!isAdLoaded) {
                  createBanner();
                  isAdLoaded = true;
                }

                return Container(child: AdWidget(ad: bannerAd));
              }))
      ],
    );
  }

  @override
  void dispose() {
    bannerAd.dispose();
    super.dispose();
  }
}
