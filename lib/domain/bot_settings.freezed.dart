// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'bot_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BotSettings _$BotSettingsFromJson(Map<String, dynamic> json) {
  return _BotSettings.fromJson(json);
}

/// @nodoc
class _$BotSettingsTearOff {
  const _$BotSettingsTearOff();

  _BotSettings call(
      {required int afterRequest,
      required int afterSuccess,
      required int afterFailedRequest,
      required int afterIpBan,
      required int jitter,
      required String userAgent}) {
    return _BotSettings(
      afterRequest: afterRequest,
      afterSuccess: afterSuccess,
      afterFailedRequest: afterFailedRequest,
      afterIpBan: afterIpBan,
      jitter: jitter,
      userAgent: userAgent,
    );
  }

  BotSettings fromJson(Map<String, Object> json) {
    return BotSettings.fromJson(json);
  }
}

/// @nodoc
const $BotSettings = _$BotSettingsTearOff();

/// @nodoc
mixin _$BotSettings {
  int get afterRequest => throw _privateConstructorUsedError;
  int get afterSuccess =>
      throw _privateConstructorUsedError; //? not implemented as the app stops then
  int get afterFailedRequest => throw _privateConstructorUsedError;
  int get afterIpBan => throw _privateConstructorUsedError;
  int get jitter => throw _privateConstructorUsedError;
  String get userAgent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BotSettingsCopyWith<BotSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotSettingsCopyWith<$Res> {
  factory $BotSettingsCopyWith(
          BotSettings value, $Res Function(BotSettings) then) =
      _$BotSettingsCopyWithImpl<$Res>;
  $Res call(
      {int afterRequest,
      int afterSuccess,
      int afterFailedRequest,
      int afterIpBan,
      int jitter,
      String userAgent});
}

/// @nodoc
class _$BotSettingsCopyWithImpl<$Res> implements $BotSettingsCopyWith<$Res> {
  _$BotSettingsCopyWithImpl(this._value, this._then);

  final BotSettings _value;
  // ignore: unused_field
  final $Res Function(BotSettings) _then;

  @override
  $Res call({
    Object? afterRequest = freezed,
    Object? afterSuccess = freezed,
    Object? afterFailedRequest = freezed,
    Object? afterIpBan = freezed,
    Object? jitter = freezed,
    Object? userAgent = freezed,
  }) {
    return _then(_value.copyWith(
      afterRequest: afterRequest == freezed
          ? _value.afterRequest
          : afterRequest // ignore: cast_nullable_to_non_nullable
              as int,
      afterSuccess: afterSuccess == freezed
          ? _value.afterSuccess
          : afterSuccess // ignore: cast_nullable_to_non_nullable
              as int,
      afterFailedRequest: afterFailedRequest == freezed
          ? _value.afterFailedRequest
          : afterFailedRequest // ignore: cast_nullable_to_non_nullable
              as int,
      afterIpBan: afterIpBan == freezed
          ? _value.afterIpBan
          : afterIpBan // ignore: cast_nullable_to_non_nullable
              as int,
      jitter: jitter == freezed
          ? _value.jitter
          : jitter // ignore: cast_nullable_to_non_nullable
              as int,
      userAgent: userAgent == freezed
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BotSettingsCopyWith<$Res>
    implements $BotSettingsCopyWith<$Res> {
  factory _$BotSettingsCopyWith(
          _BotSettings value, $Res Function(_BotSettings) then) =
      __$BotSettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int afterRequest,
      int afterSuccess,
      int afterFailedRequest,
      int afterIpBan,
      int jitter,
      String userAgent});
}

/// @nodoc
class __$BotSettingsCopyWithImpl<$Res> extends _$BotSettingsCopyWithImpl<$Res>
    implements _$BotSettingsCopyWith<$Res> {
  __$BotSettingsCopyWithImpl(
      _BotSettings _value, $Res Function(_BotSettings) _then)
      : super(_value, (v) => _then(v as _BotSettings));

  @override
  _BotSettings get _value => super._value as _BotSettings;

  @override
  $Res call({
    Object? afterRequest = freezed,
    Object? afterSuccess = freezed,
    Object? afterFailedRequest = freezed,
    Object? afterIpBan = freezed,
    Object? jitter = freezed,
    Object? userAgent = freezed,
  }) {
    return _then(_BotSettings(
      afterRequest: afterRequest == freezed
          ? _value.afterRequest
          : afterRequest // ignore: cast_nullable_to_non_nullable
              as int,
      afterSuccess: afterSuccess == freezed
          ? _value.afterSuccess
          : afterSuccess // ignore: cast_nullable_to_non_nullable
              as int,
      afterFailedRequest: afterFailedRequest == freezed
          ? _value.afterFailedRequest
          : afterFailedRequest // ignore: cast_nullable_to_non_nullable
              as int,
      afterIpBan: afterIpBan == freezed
          ? _value.afterIpBan
          : afterIpBan // ignore: cast_nullable_to_non_nullable
              as int,
      jitter: jitter == freezed
          ? _value.jitter
          : jitter // ignore: cast_nullable_to_non_nullable
              as int,
      userAgent: userAgent == freezed
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BotSettings implements _BotSettings {
  const _$_BotSettings(
      {required this.afterRequest,
      required this.afterSuccess,
      required this.afterFailedRequest,
      required this.afterIpBan,
      required this.jitter,
      required this.userAgent});

  factory _$_BotSettings.fromJson(Map<String, dynamic> json) =>
      _$_$_BotSettingsFromJson(json);

  @override
  final int afterRequest;
  @override
  final int afterSuccess;
  @override //? not implemented as the app stops then
  final int afterFailedRequest;
  @override
  final int afterIpBan;
  @override
  final int jitter;
  @override
  final String userAgent;

  @override
  String toString() {
    return 'BotSettings(afterRequest: $afterRequest, afterSuccess: $afterSuccess, afterFailedRequest: $afterFailedRequest, afterIpBan: $afterIpBan, jitter: $jitter, userAgent: $userAgent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BotSettings &&
            (identical(other.afterRequest, afterRequest) ||
                const DeepCollectionEquality()
                    .equals(other.afterRequest, afterRequest)) &&
            (identical(other.afterSuccess, afterSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.afterSuccess, afterSuccess)) &&
            (identical(other.afterFailedRequest, afterFailedRequest) ||
                const DeepCollectionEquality()
                    .equals(other.afterFailedRequest, afterFailedRequest)) &&
            (identical(other.afterIpBan, afterIpBan) ||
                const DeepCollectionEquality()
                    .equals(other.afterIpBan, afterIpBan)) &&
            (identical(other.jitter, jitter) ||
                const DeepCollectionEquality().equals(other.jitter, jitter)) &&
            (identical(other.userAgent, userAgent) ||
                const DeepCollectionEquality()
                    .equals(other.userAgent, userAgent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(afterRequest) ^
      const DeepCollectionEquality().hash(afterSuccess) ^
      const DeepCollectionEquality().hash(afterFailedRequest) ^
      const DeepCollectionEquality().hash(afterIpBan) ^
      const DeepCollectionEquality().hash(jitter) ^
      const DeepCollectionEquality().hash(userAgent);

  @JsonKey(ignore: true)
  @override
  _$BotSettingsCopyWith<_BotSettings> get copyWith =>
      __$BotSettingsCopyWithImpl<_BotSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BotSettingsToJson(this);
  }
}

abstract class _BotSettings implements BotSettings {
  const factory _BotSettings(
      {required int afterRequest,
      required int afterSuccess,
      required int afterFailedRequest,
      required int afterIpBan,
      required int jitter,
      required String userAgent}) = _$_BotSettings;

  factory _BotSettings.fromJson(Map<String, dynamic> json) =
      _$_BotSettings.fromJson;

  @override
  int get afterRequest => throw _privateConstructorUsedError;
  @override
  int get afterSuccess => throw _privateConstructorUsedError;
  @override //? not implemented as the app stops then
  int get afterFailedRequest => throw _privateConstructorUsedError;
  @override
  int get afterIpBan => throw _privateConstructorUsedError;
  @override
  int get jitter => throw _privateConstructorUsedError;
  @override
  String get userAgent => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BotSettingsCopyWith<_BotSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
