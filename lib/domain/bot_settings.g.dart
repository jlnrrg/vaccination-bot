// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BotSettings _$_$_BotSettingsFromJson(Map<String, dynamic> json) {
  return _$_BotSettings(
    afterRequest: json['afterRequest'] as int,
    afterSuccess: json['afterSuccess'] as int,
    afterFailedRequest: json['afterFailedRequest'] as int,
    afterIpBan: json['afterIpBan'] as int,
    jitter: json['jitter'] as int,
    userAgent: json['userAgent'] as String,
  );
}

Map<String, dynamic> _$_$_BotSettingsToJson(_$_BotSettings instance) =>
    <String, dynamic>{
      'afterRequest': instance.afterRequest,
      'afterSuccess': instance.afterSuccess,
      'afterFailedRequest': instance.afterFailedRequest,
      'afterIpBan': instance.afterIpBan,
      'jitter': instance.jitter,
      'userAgent': instance.userAgent,
    };
