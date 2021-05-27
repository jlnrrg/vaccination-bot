import 'package:hooks_riverpod/hooks_riverpod.dart';

final backgroundTaskProvider =
    StateNotifierProvider<BackgroundTasakStateNotifier, void>(
        (ref) => BackgroundTasakStateNotifier());

class BackgroundTasakStateNotifier extends StateNotifier<void> {
  BackgroundTasakStateNotifier() : super(null);

  Future<void> stopped() async {}

  Future<void> started() async {}
}
