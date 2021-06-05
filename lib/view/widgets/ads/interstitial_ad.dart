import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:vaccination_bot/constants/secrets.dart';
import 'package:vaccination_bot/view/widgets/ads/ad_request.dart';

class InterstitialAdWidget {
  InterstitialAd? _interstitialAd;

  Future<void> initialize() async {
    InterstitialAd.load(
      request: adRequest,
      adUnitId: kReleaseMode
          ? Secrets.adbackFromWebview
          : InterstitialAd
              .testAdUnitId, // TODO(jr): this is a test ad id. Change to real one 'ca-app-pub-2920487000916843/9702325853'
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
        },
        onAdFailedToLoad: (LoadAdError error) {
          print('InterstitialAd failed to load: $error.');
          _interstitialAd = null;
        },
      ),
    );
  }

  void show() {
    if (_interstitialAd == null) {
      print('Warning: attempt to show interstitial before loaded.');
      return;
    }
    _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (InterstitialAd ad) =>
          print('ad onAdShowedFullScreenContent.'),
      onAdDismissedFullScreenContent: (InterstitialAd ad) {
        print('$ad onAdDismissedFullScreenContent.');
        ad.dispose();
        initialize();
      },
      onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
        print('$ad onAdFailedToShowFullScreenContent: $error');
        ad.dispose();
        initialize();
      },
    );
    _interstitialAd!.show();
    _interstitialAd = null;
  }

  void dispose() {
    _interstitialAd?.dispose();
  }
}
