import 'package:freezed_annotation/freezed_annotation.dart';

part 'bot_settings.freezed.dart';
part 'bot_settings.g.dart';

@freezed
class BotSettings with _$BotSettings {
  const factory BotSettings({
    required int afterRequest,
    required int afterFailedRequest,
    required int afterIpBan,
    required int jitter,
    required String userAgent,
    required bool continueAfterSuccess,
    required int afterSuccess,
  }) = _BotSettings;

  factory BotSettings.initial() => BotSettings(
        afterRequest: 30,
        afterSuccess: 30,
        afterFailedRequest: 60,
        afterIpBan: const Duration(hours: 3).inSeconds,
        jitter: 2,
        userAgent: 'impfbot',
        continueAfterSuccess: false,
      );

  factory BotSettings.fromJson(Map<String, dynamic> json) =>
      _$BotSettingsFromJson(json);
}
