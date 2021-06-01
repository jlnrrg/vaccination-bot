import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vaccination_bot/domain/core/value_failure.dart';
import 'package:vaccination_bot/domain/core/value_object.dart';
import 'package:vaccination_bot/domain/core/value_validation.dart';

part 'value_objects.freezed.dart';

@freezed
class Birthday with _$Birthday, ValueObject<DateTime> {
  factory Birthday(DateTime inputValue) =>
      Birthday._validated(validateDateTimeNotInFuture(inputValue));
  const factory Birthday._validated(
      Either<ValueFailure<DateTime>, DateTime> value) = _Birthday;

  const Birthday._();

  int? get age => value.fold((ValueFailure<DateTime> l) => null,
      (DateTime r) => DateTime.now().year - r.year);
}

@freezed
class Postal with _$Postal, ValueObject<String> {
  factory Postal(String inputValue) => Postal._validated(
      validateMaxStringLength(inputValue.toString(), minValue).flatMap(
          (a) => validateMinStringLength(inputValue.toString(), maxValue)));
  const factory Postal._validated(Either<ValueFailure<String>, String> value) =
      _Postal;

  const Postal._();

  static const int minValue = 5;
  static const int maxValue = 5;
}
