import 'package:dartz/dartz.dart';
import 'package:vaccination_bot/domain/core/value_failure.dart';

Either<ValueFailure<DateTime>, DateTime> validateDateTimeNotInFuture(
    DateTime? input) {
  if (input == null) {
    // ignore: always_specify_types
    return left(const ValueFailure.isNull());
  }

  if (input.isAfter(DateTime.now())) {
    return left(ValueFailure<DateTime>.dateTimeInFuture(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
    String? input, int maxLength) {
  if (input == null) {
    // ignore: always_specify_types
    return left(const ValueFailure.isNull());
  }

  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure<String>.exceedingLength(input, max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateMinStringLength(
    String? input, int minLength) {
  if (input == null) {
    // ignore: always_specify_types
    return left(const ValueFailure.isNull());
  }

  if (input.length >= minLength) {
    return right(input);
  } else {
    return left(ValueFailure<String>.subceedingLength(input, min: minLength));
  }
}
