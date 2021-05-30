import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@freezed
class VaccinationCenterResponse with _$VaccinationCenterResponse {
  const factory VaccinationCenterResponse({
    String? city,
    int? distance,
    int? interval1to2,
    String? name,
    int? offsetEnd2Appointment,
    int? offsetStart2Appointment,
    bool? outOfStock,
    bool? publicAppointment,
    bool? scheduleSaturday,
    bool? scheduleSunday,
    String? streetName,
    String? streetNumber,
    int? vaccinationCenterPk,
    int? vaccinationCenterType,
    String? vaccineName,
    String? vaccineType,
    String? zipcode,
  }) = _VaccinationCenterResponse;

  factory VaccinationCenterResponse.fromJson(Map<String, dynamic> json) =>
      _$VaccinationCenterResponseFromJson(json);
}
