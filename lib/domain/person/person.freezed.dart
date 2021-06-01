// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'person.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Person _$PersonFromJson(Map<String, dynamic> json) {
  return _PersonalFormState.fromJson(json);
}

/// @nodoc
class _$PersonTearOff {
  const _$PersonTearOff();

  _PersonalFormState call(
      {String? email,
      @JsonKey(fromJson: birthdayFromJson, toJson: birthdayToJson)
          Birthday? birthday,
      @JsonKey(fromJson: postalFromJson, toJson: postalToJson)
          Postal? postal,
      Gender? gender,
      String? firstName,
      String? lastName,
      String? street,
      int? streetNr,
      int? phone}) {
    return _PersonalFormState(
      email: email,
      birthday: birthday,
      postal: postal,
      gender: gender,
      firstName: firstName,
      lastName: lastName,
      street: street,
      streetNr: streetNr,
      phone: phone,
    );
  }

  Person fromJson(Map<String, Object> json) {
    return Person.fromJson(json);
  }
}

/// @nodoc
const $Person = _$PersonTearOff();

/// @nodoc
mixin _$Person {
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(fromJson: birthdayFromJson, toJson: birthdayToJson)
  Birthday? get birthday => throw _privateConstructorUsedError;
  @JsonKey(fromJson: postalFromJson, toJson: postalToJson)
  Postal? get postal => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  int? get streetNr => throw _privateConstructorUsedError;
  int? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonCopyWith<Person> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) then) =
      _$PersonCopyWithImpl<$Res>;
  $Res call(
      {String? email,
      @JsonKey(fromJson: birthdayFromJson, toJson: birthdayToJson)
          Birthday? birthday,
      @JsonKey(fromJson: postalFromJson, toJson: postalToJson)
          Postal? postal,
      Gender? gender,
      String? firstName,
      String? lastName,
      String? street,
      int? streetNr,
      int? phone});

  $BirthdayCopyWith<$Res>? get birthday;
  $PostalCopyWith<$Res>? get postal;
  $GenderCopyWith<$Res>? get gender;
}

/// @nodoc
class _$PersonCopyWithImpl<$Res> implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._value, this._then);

  final Person _value;
  // ignore: unused_field
  final $Res Function(Person) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? birthday = freezed,
    Object? postal = freezed,
    Object? gender = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? street = freezed,
    Object? streetNr = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as Birthday?,
      postal: postal == freezed
          ? _value.postal
          : postal // ignore: cast_nullable_to_non_nullable
              as Postal?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      streetNr: streetNr == freezed
          ? _value.streetNr
          : streetNr // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $BirthdayCopyWith<$Res>? get birthday {
    if (_value.birthday == null) {
      return null;
    }

    return $BirthdayCopyWith<$Res>(_value.birthday!, (value) {
      return _then(_value.copyWith(birthday: value));
    });
  }

  @override
  $PostalCopyWith<$Res>? get postal {
    if (_value.postal == null) {
      return null;
    }

    return $PostalCopyWith<$Res>(_value.postal!, (value) {
      return _then(_value.copyWith(postal: value));
    });
  }

  @override
  $GenderCopyWith<$Res>? get gender {
    if (_value.gender == null) {
      return null;
    }

    return $GenderCopyWith<$Res>(_value.gender!, (value) {
      return _then(_value.copyWith(gender: value));
    });
  }
}

/// @nodoc
abstract class _$PersonalFormStateCopyWith<$Res>
    implements $PersonCopyWith<$Res> {
  factory _$PersonalFormStateCopyWith(
          _PersonalFormState value, $Res Function(_PersonalFormState) then) =
      __$PersonalFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? email,
      @JsonKey(fromJson: birthdayFromJson, toJson: birthdayToJson)
          Birthday? birthday,
      @JsonKey(fromJson: postalFromJson, toJson: postalToJson)
          Postal? postal,
      Gender? gender,
      String? firstName,
      String? lastName,
      String? street,
      int? streetNr,
      int? phone});

  @override
  $BirthdayCopyWith<$Res>? get birthday;
  @override
  $PostalCopyWith<$Res>? get postal;
  @override
  $GenderCopyWith<$Res>? get gender;
}

/// @nodoc
class __$PersonalFormStateCopyWithImpl<$Res> extends _$PersonCopyWithImpl<$Res>
    implements _$PersonalFormStateCopyWith<$Res> {
  __$PersonalFormStateCopyWithImpl(
      _PersonalFormState _value, $Res Function(_PersonalFormState) _then)
      : super(_value, (v) => _then(v as _PersonalFormState));

  @override
  _PersonalFormState get _value => super._value as _PersonalFormState;

  @override
  $Res call({
    Object? email = freezed,
    Object? birthday = freezed,
    Object? postal = freezed,
    Object? gender = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? street = freezed,
    Object? streetNr = freezed,
    Object? phone = freezed,
  }) {
    return _then(_PersonalFormState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as Birthday?,
      postal: postal == freezed
          ? _value.postal
          : postal // ignore: cast_nullable_to_non_nullable
              as Postal?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      streetNr: streetNr == freezed
          ? _value.streetNr
          : streetNr // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonalFormState extends _PersonalFormState {
  const _$_PersonalFormState(
      {this.email,
      @JsonKey(fromJson: birthdayFromJson, toJson: birthdayToJson)
          this.birthday,
      @JsonKey(fromJson: postalFromJson, toJson: postalToJson)
          this.postal,
      this.gender,
      this.firstName,
      this.lastName,
      this.street,
      this.streetNr,
      this.phone})
      : super._();

  factory _$_PersonalFormState.fromJson(Map<String, dynamic> json) =>
      _$_$_PersonalFormStateFromJson(json);

  @override
  final String? email;
  @override
  @JsonKey(fromJson: birthdayFromJson, toJson: birthdayToJson)
  final Birthday? birthday;
  @override
  @JsonKey(fromJson: postalFromJson, toJson: postalToJson)
  final Postal? postal;
  @override
  final Gender? gender;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? street;
  @override
  final int? streetNr;
  @override
  final int? phone;

  @override
  String toString() {
    return 'Person(email: $email, birthday: $birthday, postal: $postal, gender: $gender, firstName: $firstName, lastName: $lastName, street: $street, streetNr: $streetNr, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonalFormState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality()
                    .equals(other.birthday, birthday)) &&
            (identical(other.postal, postal) ||
                const DeepCollectionEquality().equals(other.postal, postal)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.streetNr, streetNr) ||
                const DeepCollectionEquality()
                    .equals(other.streetNr, streetNr)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(postal) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(streetNr) ^
      const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  _$PersonalFormStateCopyWith<_PersonalFormState> get copyWith =>
      __$PersonalFormStateCopyWithImpl<_PersonalFormState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PersonalFormStateToJson(this);
  }
}

abstract class _PersonalFormState extends Person {
  const factory _PersonalFormState(
      {String? email,
      @JsonKey(fromJson: birthdayFromJson, toJson: birthdayToJson)
          Birthday? birthday,
      @JsonKey(fromJson: postalFromJson, toJson: postalToJson)
          Postal? postal,
      Gender? gender,
      String? firstName,
      String? lastName,
      String? street,
      int? streetNr,
      int? phone}) = _$_PersonalFormState;
  const _PersonalFormState._() : super._();

  factory _PersonalFormState.fromJson(Map<String, dynamic> json) =
      _$_PersonalFormState.fromJson;

  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: birthdayFromJson, toJson: birthdayToJson)
  Birthday? get birthday => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: postalFromJson, toJson: postalToJson)
  Postal? get postal => throw _privateConstructorUsedError;
  @override
  Gender? get gender => throw _privateConstructorUsedError;
  @override
  String? get firstName => throw _privateConstructorUsedError;
  @override
  String? get lastName => throw _privateConstructorUsedError;
  @override
  String? get street => throw _privateConstructorUsedError;
  @override
  int? get streetNr => throw _privateConstructorUsedError;
  @override
  int? get phone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PersonalFormStateCopyWith<_PersonalFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
