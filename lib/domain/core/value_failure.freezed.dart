// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  IsNull<T> isNull<T>() {
    return IsNull<T>();
  }

  Empty<T> empty<T>(T failedValue) {
    return Empty<T>(
      failedValue,
    );
  }

  ExceedingLength<T> exceedingLength<T>(T failedValue, {required int max}) {
    return ExceedingLength<T>(
      failedValue,
      max: max,
    );
  }

  SubceedingLength<T> subceedingLength<T>(T failedValue, {required int min}) {
    return SubceedingLength<T>(
      failedValue,
      min: min,
    );
  }

  DateTimeInFuture<T> dateTimeInFuture<T>(T failedValue) {
    return DateTimeInFuture<T>(
      failedValue,
    );
  }

  Unexpected<T> unexpected<T>(T failedValue) {
    return Unexpected<T>(
      failedValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isNull,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) subceedingLength,
    required TResult Function(T failedValue) dateTimeInFuture,
    required TResult Function(T failedValue) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isNull,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? subceedingLength,
    TResult Function(T failedValue)? dateTimeInFuture,
    TResult Function(T failedValue)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsNull<T> value) isNull,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(SubceedingLength<T> value) subceedingLength,
    required TResult Function(DateTimeInFuture<T> value) dateTimeInFuture,
    required TResult Function(Unexpected<T> value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsNull<T> value)? isNull,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(SubceedingLength<T> value)? subceedingLength,
    TResult Function(DateTimeInFuture<T> value)? dateTimeInFuture,
    TResult Function(Unexpected<T> value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $IsNullCopyWith<T, $Res> {
  factory $IsNullCopyWith(IsNull<T> value, $Res Function(IsNull<T>) then) =
      _$IsNullCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$IsNullCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $IsNullCopyWith<T, $Res> {
  _$IsNullCopyWithImpl(IsNull<T> _value, $Res Function(IsNull<T>) _then)
      : super(_value, (v) => _then(v as IsNull<T>));

  @override
  IsNull<T> get _value => super._value as IsNull<T>;
}

/// @nodoc

class _$IsNull<T> extends IsNull<T> {
  const _$IsNull() : super._();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IsNull<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isNull,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) subceedingLength,
    required TResult Function(T failedValue) dateTimeInFuture,
    required TResult Function(T failedValue) unexpected,
  }) {
    return isNull();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isNull,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? subceedingLength,
    TResult Function(T failedValue)? dateTimeInFuture,
    TResult Function(T failedValue)? unexpected,
    required TResult orElse(),
  }) {
    if (isNull != null) {
      return isNull();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsNull<T> value) isNull,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(SubceedingLength<T> value) subceedingLength,
    required TResult Function(DateTimeInFuture<T> value) dateTimeInFuture,
    required TResult Function(Unexpected<T> value) unexpected,
  }) {
    return isNull(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsNull<T> value)? isNull,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(SubceedingLength<T> value)? subceedingLength,
    TResult Function(DateTimeInFuture<T> value)? dateTimeInFuture,
    TResult Function(Unexpected<T> value)? unexpected,
    required TResult orElse(),
  }) {
    if (isNull != null) {
      return isNull(this);
    }
    return orElse();
  }
}

abstract class IsNull<T> extends ValueFailure<T> {
  const factory IsNull() = _$IsNull<T>;
  const IsNull._() : super._();
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Empty<T> extends Empty<T> {
  const _$Empty(this.failedValue) : super._();

  @override
  final T failedValue;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isNull,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) subceedingLength,
    required TResult Function(T failedValue) dateTimeInFuture,
    required TResult Function(T failedValue) unexpected,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isNull,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? subceedingLength,
    TResult Function(T failedValue)? dateTimeInFuture,
    TResult Function(T failedValue)? unexpected,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsNull<T> value) isNull,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(SubceedingLength<T> value) subceedingLength,
    required TResult Function(DateTimeInFuture<T> value) dateTimeInFuture,
    required TResult Function(Unexpected<T> value) unexpected,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsNull<T> value)? isNull,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(SubceedingLength<T> value)? subceedingLength,
    TResult Function(DateTimeInFuture<T> value)? dateTimeInFuture,
    TResult Function(Unexpected<T> value)? unexpected,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> extends ValueFailure<T> {
  const factory Empty(T failedValue) = _$Empty<T>;
  const Empty._() : super._();

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLength<T> extends ExceedingLength<T> {
  const _$ExceedingLength(this.failedValue, {required this.max}) : super._();

  @override
  final T failedValue;
  @override
  final int max;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isNull,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) subceedingLength,
    required TResult Function(T failedValue) dateTimeInFuture,
    required TResult Function(T failedValue) unexpected,
  }) {
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isNull,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? subceedingLength,
    TResult Function(T failedValue)? dateTimeInFuture,
    TResult Function(T failedValue)? unexpected,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsNull<T> value) isNull,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(SubceedingLength<T> value) subceedingLength,
    required TResult Function(DateTimeInFuture<T> value) dateTimeInFuture,
    required TResult Function(Unexpected<T> value) unexpected,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsNull<T> value)? isNull,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(SubceedingLength<T> value)? subceedingLength,
    TResult Function(DateTimeInFuture<T> value)? dateTimeInFuture,
    TResult Function(Unexpected<T> value)? unexpected,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> extends ValueFailure<T> {
  const factory ExceedingLength(T failedValue, {required int max}) =
      _$ExceedingLength<T>;
  const ExceedingLength._() : super._();

  T get failedValue => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubceedingLengthCopyWith<T, $Res> {
  factory $SubceedingLengthCopyWith(
          SubceedingLength<T> value, $Res Function(SubceedingLength<T>) then) =
      _$SubceedingLengthCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int min});
}

/// @nodoc
class _$SubceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $SubceedingLengthCopyWith<T, $Res> {
  _$SubceedingLengthCopyWithImpl(
      SubceedingLength<T> _value, $Res Function(SubceedingLength<T>) _then)
      : super(_value, (v) => _then(v as SubceedingLength<T>));

  @override
  SubceedingLength<T> get _value => super._value as SubceedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? min = freezed,
  }) {
    return _then(SubceedingLength<T>(
      failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SubceedingLength<T> extends SubceedingLength<T> {
  const _$SubceedingLength(this.failedValue, {required this.min}) : super._();

  @override
  final T failedValue;
  @override
  final int min;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.min, min) ||
                const DeepCollectionEquality().equals(other.min, min)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(min);

  @JsonKey(ignore: true)
  @override
  $SubceedingLengthCopyWith<T, SubceedingLength<T>> get copyWith =>
      _$SubceedingLengthCopyWithImpl<T, SubceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isNull,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) subceedingLength,
    required TResult Function(T failedValue) dateTimeInFuture,
    required TResult Function(T failedValue) unexpected,
  }) {
    return subceedingLength(failedValue, min);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isNull,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? subceedingLength,
    TResult Function(T failedValue)? dateTimeInFuture,
    TResult Function(T failedValue)? unexpected,
    required TResult orElse(),
  }) {
    if (subceedingLength != null) {
      return subceedingLength(failedValue, min);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsNull<T> value) isNull,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(SubceedingLength<T> value) subceedingLength,
    required TResult Function(DateTimeInFuture<T> value) dateTimeInFuture,
    required TResult Function(Unexpected<T> value) unexpected,
  }) {
    return subceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsNull<T> value)? isNull,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(SubceedingLength<T> value)? subceedingLength,
    TResult Function(DateTimeInFuture<T> value)? dateTimeInFuture,
    TResult Function(Unexpected<T> value)? unexpected,
    required TResult orElse(),
  }) {
    if (subceedingLength != null) {
      return subceedingLength(this);
    }
    return orElse();
  }
}

abstract class SubceedingLength<T> extends ValueFailure<T> {
  const factory SubceedingLength(T failedValue, {required int min}) =
      _$SubceedingLength<T>;
  const SubceedingLength._() : super._();

  T get failedValue => throw _privateConstructorUsedError;
  int get min => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubceedingLengthCopyWith<T, SubceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateTimeInFutureCopyWith<T, $Res> {
  factory $DateTimeInFutureCopyWith(
          DateTimeInFuture<T> value, $Res Function(DateTimeInFuture<T>) then) =
      _$DateTimeInFutureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$DateTimeInFutureCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $DateTimeInFutureCopyWith<T, $Res> {
  _$DateTimeInFutureCopyWithImpl(
      DateTimeInFuture<T> _value, $Res Function(DateTimeInFuture<T>) _then)
      : super(_value, (v) => _then(v as DateTimeInFuture<T>));

  @override
  DateTimeInFuture<T> get _value => super._value as DateTimeInFuture<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(DateTimeInFuture<T>(
      failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DateTimeInFuture<T> extends DateTimeInFuture<T> {
  const _$DateTimeInFuture(this.failedValue) : super._();

  @override
  final T failedValue;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DateTimeInFuture<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $DateTimeInFutureCopyWith<T, DateTimeInFuture<T>> get copyWith =>
      _$DateTimeInFutureCopyWithImpl<T, DateTimeInFuture<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isNull,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) subceedingLength,
    required TResult Function(T failedValue) dateTimeInFuture,
    required TResult Function(T failedValue) unexpected,
  }) {
    return dateTimeInFuture(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isNull,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? subceedingLength,
    TResult Function(T failedValue)? dateTimeInFuture,
    TResult Function(T failedValue)? unexpected,
    required TResult orElse(),
  }) {
    if (dateTimeInFuture != null) {
      return dateTimeInFuture(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsNull<T> value) isNull,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(SubceedingLength<T> value) subceedingLength,
    required TResult Function(DateTimeInFuture<T> value) dateTimeInFuture,
    required TResult Function(Unexpected<T> value) unexpected,
  }) {
    return dateTimeInFuture(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsNull<T> value)? isNull,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(SubceedingLength<T> value)? subceedingLength,
    TResult Function(DateTimeInFuture<T> value)? dateTimeInFuture,
    TResult Function(Unexpected<T> value)? unexpected,
    required TResult orElse(),
  }) {
    if (dateTimeInFuture != null) {
      return dateTimeInFuture(this);
    }
    return orElse();
  }
}

abstract class DateTimeInFuture<T> extends ValueFailure<T> {
  const factory DateTimeInFuture(T failedValue) = _$DateTimeInFuture<T>;
  const DateTimeInFuture._() : super._();

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateTimeInFutureCopyWith<T, DateTimeInFuture<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnexpectedCopyWith<T, $Res> {
  factory $UnexpectedCopyWith(
          Unexpected<T> value, $Res Function(Unexpected<T>) then) =
      _$UnexpectedCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$UnexpectedCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $UnexpectedCopyWith<T, $Res> {
  _$UnexpectedCopyWithImpl(
      Unexpected<T> _value, $Res Function(Unexpected<T>) _then)
      : super(_value, (v) => _then(v as Unexpected<T>));

  @override
  Unexpected<T> get _value => super._value as Unexpected<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(Unexpected<T>(
      failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Unexpected<T> extends Unexpected<T> {
  const _$Unexpected(this.failedValue) : super._();

  @override
  final T failedValue;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Unexpected<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $UnexpectedCopyWith<T, Unexpected<T>> get copyWith =>
      _$UnexpectedCopyWithImpl<T, Unexpected<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isNull,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue, int min) subceedingLength,
    required TResult Function(T failedValue) dateTimeInFuture,
    required TResult Function(T failedValue) unexpected,
  }) {
    return unexpected(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isNull,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue, int min)? subceedingLength,
    TResult Function(T failedValue)? dateTimeInFuture,
    TResult Function(T failedValue)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsNull<T> value) isNull,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(SubceedingLength<T> value) subceedingLength,
    required TResult Function(DateTimeInFuture<T> value) dateTimeInFuture,
    required TResult Function(Unexpected<T> value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsNull<T> value)? isNull,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(SubceedingLength<T> value)? subceedingLength,
    TResult Function(DateTimeInFuture<T> value)? dateTimeInFuture,
    TResult Function(Unexpected<T> value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected<T> extends ValueFailure<T> {
  const factory Unexpected(T failedValue) = _$Unexpected<T>;
  const Unexpected._() : super._();

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnexpectedCopyWith<T, Unexpected<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
