// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:vaccination_bot/generated/codegen_loader.g.dart';

part 'value_unions.freezed.dart';
part 'value_unions.g.dart';

@freezed
class Gender with _$Gender {
  const factory Gender.male() = _Male;
  const factory Gender.female() = _Female;
  const factory Gender.diverse() = _Diverse;

  const Gender._();

  factory Gender.fromJson(Map<String, dynamic> json) => _$GenderFromJson(json);

  @override
  String toString() {
    return map(
      male: (_) => LocaleKeys.gender.tr(gender: 'male'),
      female: (_) => LocaleKeys.gender.tr(gender: 'female'),
      diverse: (_) => LocaleKeys.gender.tr(gender: 'other'),
    );
  }

  IconData toIcon() {
    return map(
      male: (_) => FontAwesomeIcons.mars,
      female: (_) => FontAwesomeIcons.venus,
      diverse: (_) => FontAwesomeIcons.transgenderAlt,
    );
  }
}

@freezed
class Group with _$Group {
  const factory Group.job() = _Job;
  const factory Group.medicalOrElse() = _MedicalOrElse;
  const factory Group.none() = _None;

  const Group._();

  static Group? fromJson(String value) {
    switch (value) {
      case 'job':
        return const Group.job();
      case 'medicalOrElse':
        return const Group.medicalOrElse();
      case 'none':
        return const Group.none();
    }
  }

  String toJson() {
    return map(
        job: (_) => 'job',
        medicalOrElse: (_) => 'medicalOrElse',
        none: (_) => 'none');
  }

  @override
  String toString() {
    return map(
      job: (_) => LocaleKeys.vaccinationGroup_job.tr(),
      medicalOrElse: (_) => LocaleKeys.vaccinationGroup_medication.tr(),
      none: (_) => LocaleKeys.vaccinationGroup_none.tr(),
    );
  }

  IconData toIcon() {
    return map(
      job: (_) => FontAwesomeIcons.userTie,
      medicalOrElse: (_) => FontAwesomeIcons.medkit,
      none: (_) => FontAwesomeIcons.userAltSlash,
    );
  }
}
