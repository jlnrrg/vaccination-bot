import 'package:google_mobile_ads/google_mobile_ads.dart';

const AdRequest adRequest = AdRequest(
  keywords: [
    'vaccination',
    'impfung',
    'bot',
    'automatisierung',
    'niedersachsen',
    'hintergrund'
  ],
  contentUrl:
      'https://www.impfportal-niedersachsen.de/portal/#/appointment/public',
  nonPersonalizedAds: true,
);
