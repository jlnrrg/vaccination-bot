// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:vaccination_bot/generated/codegen_loader.g.dart';

part 'value_failure.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.isNull() = IsNull<T>;
  const factory ValueFailure.empty(T failedValue) = Empty<T>;
  const factory ValueFailure.exceedingLength(T failedValue,
      {required int max}) = ExceedingLength<T>;
  const factory ValueFailure.subceedingLength(T failedValue,
      {required int min}) = SubceedingLength<T>;
  const factory ValueFailure.dateTimeInFuture(T failedValue) =
      DateTimeInFuture<T>;
  const factory ValueFailure.unexpected(T failedValue) = Unexpected<T>;

  const ValueFailure._();

  @override
  String toString() {
    return map(
      isNull: (_) => tr(LocaleKeys.valueFailure_isNull),
      empty: (_) => tr(LocaleKeys.valueFailure_empty),
      exceedingLength: (_) => tr(LocaleKeys.valueFailure_exceedingLength),
      subceedingLength: (_) => tr(LocaleKeys.valueFailure_subceedingLength),
      dateTimeInFuture: (_) => tr(LocaleKeys.valueFailure_dateTimeInFuture),
      unexpected: (_) => tr(LocaleKeys.valueFailure_unexpected),
    );
  }
}
