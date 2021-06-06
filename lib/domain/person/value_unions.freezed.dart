// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'value_unions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Gender _$GenderFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'male':
      return _Male.fromJson(json);
    case 'female':
      return _Female.fromJson(json);
    case 'diverse':
      return _Diverse.fromJson(json);

    default:
      throw FallThroughError();
  }
}

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

  Gender fromJson(Map<String, Object> json) {
    return Gender.fromJson(json);
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
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
@JsonSerializable()
class _$_Male extends _Male {
  const _$_Male() : super._();

  factory _$_Male.fromJson(Map<String, dynamic> json) =>
      _$_$_MaleFromJson(json);

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

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MaleToJson(this)..['runtimeType'] = 'male';
  }
}

abstract class _Male extends Gender {
  const factory _Male() = _$_Male;
  const _Male._() : super._();

  factory _Male.fromJson(Map<String, dynamic> json) = _$_Male.fromJson;
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
@JsonSerializable()
class _$_Female extends _Female {
  const _$_Female() : super._();

  factory _$_Female.fromJson(Map<String, dynamic> json) =>
      _$_$_FemaleFromJson(json);

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

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FemaleToJson(this)..['runtimeType'] = 'female';
  }
}

abstract class _Female extends Gender {
  const factory _Female() = _$_Female;
  const _Female._() : super._();

  factory _Female.fromJson(Map<String, dynamic> json) = _$_Female.fromJson;
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
@JsonSerializable()
class _$_Diverse extends _Diverse {
  const _$_Diverse() : super._();

  factory _$_Diverse.fromJson(Map<String, dynamic> json) =>
      _$_$_DiverseFromJson(json);

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

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiverseToJson(this)..['runtimeType'] = 'diverse';
  }
}

abstract class _Diverse extends Gender {
  const factory _Diverse() = _$_Diverse;
  const _Diverse._() : super._();

  factory _Diverse.fromJson(Map<String, dynamic> json) = _$_Diverse.fromJson;
}

/// @nodoc
class _$GroupTearOff {
  const _$GroupTearOff();

  _Job job() {
    return const _Job();
  }

  _MedicalOrElse medicalOrElse() {
    return const _MedicalOrElse();
  }

  _None none() {
    return const _None();
  }
}

/// @nodoc
const $Group = _$GroupTearOff();

/// @nodoc
mixin _$Group {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() job,
    required TResult Function() medicalOrElse,
    required TResult Function() none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? job,
    TResult Function()? medicalOrElse,
    TResult Function()? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Job value) job,
    required TResult Function(_MedicalOrElse value) medicalOrElse,
    required TResult Function(_None value) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Job value)? job,
    TResult Function(_MedicalOrElse value)? medicalOrElse,
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupCopyWithImpl<$Res> implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  final Group _value;
  // ignore: unused_field
  final $Res Function(Group) _then;
}

/// @nodoc
abstract class _$JobCopyWith<$Res> {
  factory _$JobCopyWith(_Job value, $Res Function(_Job) then) =
      __$JobCopyWithImpl<$Res>;
}

/// @nodoc
class __$JobCopyWithImpl<$Res> extends _$GroupCopyWithImpl<$Res>
    implements _$JobCopyWith<$Res> {
  __$JobCopyWithImpl(_Job _value, $Res Function(_Job) _then)
      : super(_value, (v) => _then(v as _Job));

  @override
  _Job get _value => super._value as _Job;
}

/// @nodoc

class _$_Job extends _Job {
  const _$_Job() : super._();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Job);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() job,
    required TResult Function() medicalOrElse,
    required TResult Function() none,
  }) {
    return job();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? job,
    TResult Function()? medicalOrElse,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (job != null) {
      return job();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Job value) job,
    required TResult Function(_MedicalOrElse value) medicalOrElse,
    required TResult Function(_None value) none,
  }) {
    return job(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Job value)? job,
    TResult Function(_MedicalOrElse value)? medicalOrElse,
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) {
    if (job != null) {
      return job(this);
    }
    return orElse();
  }
}

abstract class _Job extends Group {
  const factory _Job() = _$_Job;
  const _Job._() : super._();
}

/// @nodoc
abstract class _$MedicalOrElseCopyWith<$Res> {
  factory _$MedicalOrElseCopyWith(
          _MedicalOrElse value, $Res Function(_MedicalOrElse) then) =
      __$MedicalOrElseCopyWithImpl<$Res>;
}

/// @nodoc
class __$MedicalOrElseCopyWithImpl<$Res> extends _$GroupCopyWithImpl<$Res>
    implements _$MedicalOrElseCopyWith<$Res> {
  __$MedicalOrElseCopyWithImpl(
      _MedicalOrElse _value, $Res Function(_MedicalOrElse) _then)
      : super(_value, (v) => _then(v as _MedicalOrElse));

  @override
  _MedicalOrElse get _value => super._value as _MedicalOrElse;
}

/// @nodoc

class _$_MedicalOrElse extends _MedicalOrElse {
  const _$_MedicalOrElse() : super._();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MedicalOrElse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() job,
    required TResult Function() medicalOrElse,
    required TResult Function() none,
  }) {
    return medicalOrElse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? job,
    TResult Function()? medicalOrElse,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (medicalOrElse != null) {
      return medicalOrElse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Job value) job,
    required TResult Function(_MedicalOrElse value) medicalOrElse,
    required TResult Function(_None value) none,
  }) {
    return medicalOrElse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Job value)? job,
    TResult Function(_MedicalOrElse value)? medicalOrElse,
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) {
    if (medicalOrElse != null) {
      return medicalOrElse(this);
    }
    return orElse();
  }
}

abstract class _MedicalOrElse extends Group {
  const factory _MedicalOrElse() = _$_MedicalOrElse;
  const _MedicalOrElse._() : super._();
}

/// @nodoc
abstract class _$NoneCopyWith<$Res> {
  factory _$NoneCopyWith(_None value, $Res Function(_None) then) =
      __$NoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoneCopyWithImpl<$Res> extends _$GroupCopyWithImpl<$Res>
    implements _$NoneCopyWith<$Res> {
  __$NoneCopyWithImpl(_None _value, $Res Function(_None) _then)
      : super(_value, (v) => _then(v as _None));

  @override
  _None get _value => super._value as _None;
}

/// @nodoc

class _$_None extends _None {
  const _$_None() : super._();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _None);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() job,
    required TResult Function() medicalOrElse,
    required TResult Function() none,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? job,
    TResult Function()? medicalOrElse,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Job value) job,
    required TResult Function(_MedicalOrElse value) medicalOrElse,
    required TResult Function(_None value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Job value)? job,
    TResult Function(_MedicalOrElse value)? medicalOrElse,
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None extends Group {
  const factory _None() = _$_None;
  const _None._() : super._();
}
