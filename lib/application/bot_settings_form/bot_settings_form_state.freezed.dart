// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'bot_settings_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BotSettingsFormStateTearOff {
  const _$BotSettingsFormStateTearOff();

  _BotSettingsFormState call(
      {required BotSettings settings,
      @JsonKey(ignore: true) required AutovalidateMode showErrorMessages,
      @JsonKey(ignore: true) required GlobalKey<FormState> formKey}) {
    return _BotSettingsFormState(
      settings: settings,
      showErrorMessages: showErrorMessages,
      formKey: formKey,
    );
  }
}

/// @nodoc
const $BotSettingsFormState = _$BotSettingsFormStateTearOff();

/// @nodoc
mixin _$BotSettingsFormState {
  BotSettings get settings => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BotSettingsFormStateCopyWith<BotSettingsFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotSettingsFormStateCopyWith<$Res> {
  factory $BotSettingsFormStateCopyWith(BotSettingsFormState value,
          $Res Function(BotSettingsFormState) then) =
      _$BotSettingsFormStateCopyWithImpl<$Res>;
  $Res call(
      {BotSettings settings,
      @JsonKey(ignore: true) AutovalidateMode showErrorMessages,
      @JsonKey(ignore: true) GlobalKey<FormState> formKey});

  $BotSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$BotSettingsFormStateCopyWithImpl<$Res>
    implements $BotSettingsFormStateCopyWith<$Res> {
  _$BotSettingsFormStateCopyWithImpl(this._value, this._then);

  final BotSettingsFormState _value;
  // ignore: unused_field
  final $Res Function(BotSettingsFormState) _then;

  @override
  $Res call({
    Object? settings = freezed,
    Object? showErrorMessages = freezed,
    Object? formKey = freezed,
  }) {
    return _then(_value.copyWith(
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as BotSettings,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      formKey: formKey == freezed
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
    ));
  }

  @override
  $BotSettingsCopyWith<$Res> get settings {
    return $BotSettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc
abstract class _$BotSettingsFormStateCopyWith<$Res>
    implements $BotSettingsFormStateCopyWith<$Res> {
  factory _$BotSettingsFormStateCopyWith(_BotSettingsFormState value,
          $Res Function(_BotSettingsFormState) then) =
      __$BotSettingsFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BotSettings settings,
      @JsonKey(ignore: true) AutovalidateMode showErrorMessages,
      @JsonKey(ignore: true) GlobalKey<FormState> formKey});

  @override
  $BotSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$BotSettingsFormStateCopyWithImpl<$Res>
    extends _$BotSettingsFormStateCopyWithImpl<$Res>
    implements _$BotSettingsFormStateCopyWith<$Res> {
  __$BotSettingsFormStateCopyWithImpl(
      _BotSettingsFormState _value, $Res Function(_BotSettingsFormState) _then)
      : super(_value, (v) => _then(v as _BotSettingsFormState));

  @override
  _BotSettingsFormState get _value => super._value as _BotSettingsFormState;

  @override
  $Res call({
    Object? settings = freezed,
    Object? showErrorMessages = freezed,
    Object? formKey = freezed,
  }) {
    return _then(_BotSettingsFormState(
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as BotSettings,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      formKey: formKey == freezed
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
    ));
  }
}

/// @nodoc

class _$_BotSettingsFormState implements _BotSettingsFormState {
  const _$_BotSettingsFormState(
      {required this.settings,
      @JsonKey(ignore: true) required this.showErrorMessages,
      @JsonKey(ignore: true) required this.formKey});

  @override
  final BotSettings settings;
  @override
  @JsonKey(ignore: true)
  final AutovalidateMode showErrorMessages;
  @override
  @JsonKey(ignore: true)
  final GlobalKey<FormState> formKey;

  @override
  String toString() {
    return 'BotSettingsFormState(settings: $settings, showErrorMessages: $showErrorMessages, formKey: $formKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BotSettingsFormState &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.formKey, formKey) ||
                const DeepCollectionEquality().equals(other.formKey, formKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(settings) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(formKey);

  @JsonKey(ignore: true)
  @override
  _$BotSettingsFormStateCopyWith<_BotSettingsFormState> get copyWith =>
      __$BotSettingsFormStateCopyWithImpl<_BotSettingsFormState>(
          this, _$identity);
}

abstract class _BotSettingsFormState implements BotSettingsFormState {
  const factory _BotSettingsFormState(
          {required BotSettings settings,
          @JsonKey(ignore: true) required AutovalidateMode showErrorMessages,
          @JsonKey(ignore: true) required GlobalKey<FormState> formKey}) =
      _$_BotSettingsFormState;

  @override
  BotSettings get settings => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BotSettingsFormStateCopyWith<_BotSettingsFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
