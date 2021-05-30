// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaccinationCenterResponse _$_$_VaccinationCenterResponseFromJson(
    Map<String, dynamic> json) {
  return _$_VaccinationCenterResponse(
    city: json['city'] as String?,
    distance: json['distance'] as int?,
    interval1to2: json['interval1to2'] as int?,
    name: json['name'] as String?,
    offsetEnd2Appointment: json['offsetEnd2Appointment'] as int?,
    offsetStart2Appointment: json['offsetStart2Appointment'] as int?,
    outOfStock: json['outOfStock'] as bool?,
    publicAppointment: json['publicAppointment'] as bool?,
    scheduleSaturday: json['scheduleSaturday'] as bool?,
    scheduleSunday: json['scheduleSunday'] as bool?,
    streetName: json['streetName'] as String?,
    streetNumber: json['streetNumber'] as String?,
    vaccinationCenterPk: json['vaccinationCenterPk'] as int?,
    vaccinationCenterType: json['vaccinationCenterType'] as int?,
    vaccineName: json['vaccineName'] as String?,
    vaccineType: json['vaccineType'] as String?,
    zipcode: json['zipcode'] as String?,
  );
}

Map<String, dynamic> _$_$_VaccinationCenterResponseToJson(
        _$_VaccinationCenterResponse instance) =>
    <String, dynamic>{
      'city': instance.city,
      'distance': instance.distance,
      'interval1to2': instance.interval1to2,
      'name': instance.name,
      'offsetEnd2Appointment': instance.offsetEnd2Appointment,
      'offsetStart2Appointment': instance.offsetStart2Appointment,
      'outOfStock': instance.outOfStock,
      'publicAppointment': instance.publicAppointment,
      'scheduleSaturday': instance.scheduleSaturday,
      'scheduleSunday': instance.scheduleSunday,
      'streetName': instance.streetName,
      'streetNumber': instance.streetNumber,
      'vaccinationCenterPk': instance.vaccinationCenterPk,
      'vaccinationCenterType': instance.vaccinationCenterType,
      'vaccineName': instance.vaccineName,
      'vaccineType': instance.vaccineType,
      'zipcode': instance.zipcode,
    };
