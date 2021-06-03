// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonalFormState _$_$_PersonalFormStateFromJson(Map<String, dynamic> json) {
  return _$_PersonalFormState(
    email: json['email'] as String?,
    birthday: birthdayFromJson(json['birthday'] as String?),
    postal: postalFromJson(json['postal'] as String?),
    gender: json['gender'] == null
        ? null
        : Gender.fromJson(json['gender'] as Map<String, dynamic>),
    firstName: json['firstName'] as String?,
    lastName: json['lastName'] as String?,
    street: json['street'] as String?,
    streetNr: json['streetNr'] as String?,
    phone: json['phone'] as String?,
  );
}

Map<String, dynamic> _$_$_PersonalFormStateToJson(
        _$_PersonalFormState instance) =>
    <String, dynamic>{
      'email': instance.email,
      'birthday': birthdayToJson(instance.birthday),
      'postal': postalToJson(instance.postal),
      'gender': instance.gender,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'street': instance.street,
      'streetNr': instance.streetNr,
      'phone': instance.phone,
    };
