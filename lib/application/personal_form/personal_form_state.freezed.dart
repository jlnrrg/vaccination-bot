// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'personal_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PersonalFormStateTearOff {
  const _$PersonalFormStateTearOff();

  _PersonalFormState call(
      {required AutovalidateMode showErrorMessages,
      required GlobalKey<FormState> formKey,
      required Person person,
      required Option<String> saveFailureOrSuccessOption}) {
    return _PersonalFormState(
      showErrorMessages: showErrorMessages,
      formKey: formKey,
      person: person,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $PersonalFormState = _$PersonalFormStateTearOff();

/// @nodoc
mixin _$PersonalFormState {
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  Person get person => throw _privateConstructorUsedError;
  Option<String> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonalFormStateCopyWith<PersonalFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalFormStateCopyWith<$Res> {
  factory $PersonalFormStateCopyWith(
          PersonalFormState value, $Res Function(PersonalFormState) then) =
      _$PersonalFormStateCopyWithImpl<$Res>;
  $Res call(
      {AutovalidateMode showErrorMessages,
      GlobalKey<FormState> formKey,
      Person person,
      Option<String> saveFailureOrSuccessOption});

  $PersonCopyWith<$Res> get person;
}

/// @nodoc
class _$PersonalFormStateCopyWithImpl<$Res>
    implements $PersonalFormStateCopyWith<$Res> {
  _$PersonalFormStateCopyWithImpl(this._value, this._then);

  final PersonalFormState _value;
  // ignore: unused_field
  final $Res Function(PersonalFormState) _then;

  @override
  $Res call({
    Object? showErrorMessages = freezed,
    Object? formKey = freezed,
    Object? person = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      formKey: formKey == freezed
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      person: person == freezed
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }

  @override
  $PersonCopyWith<$Res> get person {
    return $PersonCopyWith<$Res>(_value.person, (value) {
      return _then(_value.copyWith(person: value));
    });
  }
}

/// @nodoc
abstract class _$PersonalFormStateCopyWith<$Res>
    implements $PersonalFormStateCopyWith<$Res> {
  factory _$PersonalFormStateCopyWith(
          _PersonalFormState value, $Res Function(_PersonalFormState) then) =
      __$PersonalFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AutovalidateMode showErrorMessages,
      GlobalKey<FormState> formKey,
      Person person,
      Option<String> saveFailureOrSuccessOption});

  @override
  $PersonCopyWith<$Res> get person;
}

/// @nodoc
class __$PersonalFormStateCopyWithImpl<$Res>
    extends _$PersonalFormStateCopyWithImpl<$Res>
    implements _$PersonalFormStateCopyWith<$Res> {
  __$PersonalFormStateCopyWithImpl(
      _PersonalFormState _value, $Res Function(_PersonalFormState) _then)
      : super(_value, (v) => _then(v as _PersonalFormState));

  @override
  _PersonalFormState get _value => super._value as _PersonalFormState;

  @override
  $Res call({
    Object? showErrorMessages = freezed,
    Object? formKey = freezed,
    Object? person = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_PersonalFormState(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      formKey: formKey == freezed
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      person: person == freezed
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_PersonalFormState implements _PersonalFormState {
  const _$_PersonalFormState(
      {required this.showErrorMessages,
      required this.formKey,
      required this.person,
      required this.saveFailureOrSuccessOption});

  @override
  final AutovalidateMode showErrorMessages;
  @override
  final GlobalKey<FormState> formKey;
  @override
  final Person person;
  @override
  final Option<String> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'PersonalFormState(showErrorMessages: $showErrorMessages, formKey: $formKey, person: $person, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonalFormState &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.formKey, formKey) ||
                const DeepCollectionEquality()
                    .equals(other.formKey, formKey)) &&
            (identical(other.person, person) ||
                const DeepCollectionEquality().equals(other.person, person)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(formKey) ^
      const DeepCollectionEquality().hash(person) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$PersonalFormStateCopyWith<_PersonalFormState> get copyWith =>
      __$PersonalFormStateCopyWithImpl<_PersonalFormState>(this, _$identity);
}

abstract class _PersonalFormState implements PersonalFormState {
  const factory _PersonalFormState(
          {required AutovalidateMode showErrorMessages,
          required GlobalKey<FormState> formKey,
          required Person person,
          required Option<String> saveFailureOrSuccessOption}) =
      _$_PersonalFormState;

  @override
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  @override
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  @override
  Person get person => throw _privateConstructorUsedError;
  @override
  Option<String> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PersonalFormStateCopyWith<_PersonalFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
