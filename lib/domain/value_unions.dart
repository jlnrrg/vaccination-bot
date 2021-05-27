// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:impftermin/generated/codegen_loader.g.dart';

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
