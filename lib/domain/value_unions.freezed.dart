// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'value_unions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GenderTearOff {
  const _$GenderTearOff();

  _Male male() {
    return const _Male();
  }

  _Female female() {
    return const _Female();
  }

  _Diverse diverse() {
    return const _Diverse();
  }
}

/// @nodoc
const $Gender = _$GenderTearOff();

/// @nodoc
mixin _$Gender {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() male,
    required TResult Function() female,
    required TResult Function() diverse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? male,
    TResult Function()? female,
    TResult Function()? diverse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Male value) male,
    required TResult Function(_Female value) female,
    required TResult Function(_Diverse value) diverse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Male value)? male,
    TResult Function(_Female value)? female,
    TResult Function(_Diverse value)? diverse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderCopyWith<$Res> {
  factory $GenderCopyWith(Gender value, $Res Function(Gender) then) =
      _$GenderCopyWithImpl<$Res>;
}

/// @nodoc
class _$GenderCopyWithImpl<$Res> implements $GenderCopyWith<$Res> {
  _$GenderCopyWithImpl(this._value, this._then);

  final Gender _value;
  // ignore: unused_field
  final $Res Function(Gender) _then;
}

/// @nodoc
abstract class _$MaleCopyWith<$Res> {
  factory _$MaleCopyWith(_Male value, $Res Function(_Male) then) =
      __$MaleCopyWithImpl<$Res>;
}

/// @nodoc
class __$MaleCopyWithImpl<$Res> extends _$GenderCopyWithImpl<$Res>
    implements _$MaleCopyWith<$Res> {
  __$MaleCopyWithImpl(_Male _value, $Res Function(_Male) _then)
      : super(_value, (v) => _then(v as _Male));

  @override
  _Male get _value => super._value as _Male;
}

/// @nodoc

class _$_Male extends _Male {
  const _$_Male() : super._();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Male);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() male,
    required TResult Function() female,
    required TResult Function() diverse,
  }) {
    return male();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? male,
    TResult Function()? female,
    TResult Function()? diverse,
    required TResult orElse(),
  }) {
    if (male != null) {
      return male();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Male value) male,
    required TResult Function(_Female value) female,
    required TResult Function(_Diverse value) diverse,
  }) {
    return male(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Male value)? male,
    TResult Function(_Female value)? female,
    TResult Function(_Diverse value)? diverse,
    required TResult orElse(),
  }) {
    if (male != null) {
      return male(this);
    }
    return orElse();
  }
}

abstract class _Male extends Gender {
  const factory _Male() = _$_Male;
  const _Male._() : super._();
}

/// @nodoc
abstract class _$FemaleCopyWith<$Res> {
  factory _$FemaleCopyWith(_Female value, $Res Function(_Female) then) =
      __$FemaleCopyWithImpl<$Res>;
}

/// @nodoc
class __$FemaleCopyWithImpl<$Res> extends _$GenderCopyWithImpl<$Res>
    implements _$FemaleCopyWith<$Res> {
  __$FemaleCopyWithImpl(_Female _value, $Res Function(_Female) _then)
      : super(_value, (v) => _then(v as _Female));

  @override
  _Female get _value => super._value as _Female;
}

/// @nodoc

class _$_Female extends _Female {
  const _$_Female() : super._();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Female);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() male,
    required TResult Function() female,
    required TResult Function() diverse,
  }) {
    return female();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? male,
    TResult Function()? female,
    TResult Function()? diverse,
    required TResult orElse(),
  }) {
    if (female != null) {
      return female();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Male value) male,
    required TResult Function(_Female value) female,
    required TResult Function(_Diverse value) diverse,
  }) {
    return female(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Male value)? male,
    TResult Function(_Female value)? female,
    TResult Function(_Diverse value)? diverse,
    required TResult orElse(),
  }) {
    if (female != null) {
      return female(this);
    }
    return orElse();
  }
}

abstract class _Female extends Gender {
  const factory _Female() = _$_Female;
  const _Female._() : super._();
}

/// @nodoc
abstract class _$DiverseCopyWith<$Res> {
  factory _$DiverseCopyWith(_Diverse value, $Res Function(_Diverse) then) =
      __$DiverseCopyWithImpl<$Res>;
}

/// @nodoc
class __$DiverseCopyWithImpl<$Res> extends _$GenderCopyWithImpl<$Res>
    implements _$DiverseCopyWith<$Res> {
  __$DiverseCopyWithImpl(_Diverse _value, $Res Function(_Diverse) _then)
      : super(_value, (v) => _then(v as _Diverse));

  @override
  _Diverse get _value => super._value as _Diverse;
}

/// @nodoc

class _$_Diverse extends _Diverse {
  const _$_Diverse() : super._();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Diverse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() male,
    required TResult Function() female,
    required TResult Function() diverse,
  }) {
    return diverse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? male,
    TResult Function()? female,
    TResult Function()? diverse,
    required TResult orElse(),
  }) {
    if (diverse != null) {
      return diverse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Male value) male,
    required TResult Function(_Female value) female,
    required TResult Function(_Diverse value) diverse,
  }) {
    return diverse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Male value)? male,
    TResult Function(_Female value)? female,
    TResult Function(_Diverse value)? diverse,
    required TResult orElse(),
  }) {
    if (diverse != null) {
      return diverse(this);
    }
    return orElse();
  }
}

abstract class _Diverse extends Gender {
  const factory _Diverse() = _$_Diverse;
  const _Diverse._() : super._();
}
