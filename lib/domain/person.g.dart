// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonalFormState _$_$_PersonalFormStateFromJson(Map<String, dynamic> json) {
  return _$_PersonalFormState(
    email: json['email'] as String?,
    birthday: json['birthday'] == null
        ? null
        : DateTime.parse(json['birthday'] as String),
    postal: json['postal'] as int?,
    gender: json['gender'] == null
        ? null
        : Gender.fromJson(json['gender'] as Map<String, dynamic>),
    firstName: json['firstName'] as String?,
    lastName: json['lastName'] as String?,
    street: json['street'] as String?,
    streetNr: json['streetNr'] as int?,
    city: json['city'] as String?,
    phone: json['phone'] as int?,
  );
}

Map<String, dynamic> _$_$_PersonalFormStateToJson(
        _$_PersonalFormState instance) =>
    <String, dynamic>{
      'email': instance.email,
      'birthday': instance.birthday?.toIso8601String(),
      'postal': instance.postal,
      'gender': instance.gender,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'street': instance.street,
      'streetNr': instance.streetNr,
      'city': instance.city,
      'phone': instance.phone,
    };
