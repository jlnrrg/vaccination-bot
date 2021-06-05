import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:vaccination_bot/constants/secrets.dart';
import 'package:vaccination_bot/view/widgets/ads/ad_request.dart';

class BannerAdWidget extends StatefulWidget {
  BannerAdWidget({Key? key}) : super(key: key);

  @override
  _BannerAdWidgetState createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends State<BannerAdWidget> {
  BannerAd? bannerAd;

  Future<void> createBanner(BuildContext context) async {
    final AnchoredAdaptiveBannerAdSize? size =
        await AdSize.getAnchoredAdaptiveBannerAdSize(
      Orientation.portrait,
      MediaQuery.of(context).size.width.truncate(),
    );

    if (size == null) {
      print('Unable to get height of anchored banner.');
      return;
    }

    BannerAd(
      size: size,
      request: adRequest,
      adUnitId: kReleaseMode
          ? Secrets.adAppBar
          : BannerAd
              .testAdUnitId, // TODO(jr): this is a test ad id. Change to real one 'ca-app-pub-2920487000916843/9702325853'
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            bannerAd = ad as BannerAd?;
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print('$BannerAd failedToLoad: $error');
          ad.dispose();
        },
        onAdOpened: (Ad ad) => print('$BannerAd onAdOpened.'),
        onAdClosed: (Ad ad) => print('$BannerAd onAdClosed.'),
      ),
    )..load();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (BuildContext context) {
      if (bannerAd == null) {
        createBanner(context);
      }

      return bannerAd != null
          ? Container(
              width: bannerAd!.size.width.toDouble(),
              height: bannerAd!.size.height.toDouble(),
              child: AdWidget(ad: bannerAd!))
          : Container();
    });
  }

  @override
  void dispose() {
    super.dispose();
    bannerAd?.dispose();
    bannerAd = null;
  }
}
