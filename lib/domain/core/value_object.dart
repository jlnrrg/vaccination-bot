// 📦 Package imports:
import 'package:dartz/dartz.dart';

// 🌎 Project imports:
import 'package:vaccination_bot/domain/core/value_failure.dart';

/// requires Either<ValueFailure<T>, T> eitherValue
mixin ValueObject<T> {
  Either<ValueFailure<T>, T> get value;

  Either<ValueFailure<T>, Unit> get failureOrUnit {
    return value.fold(
      (ValueFailure<T> l) => left(l),
      (T r) => right(unit),
    );
  }

  Option<ValueFailure<T>> get failureOrNoneOption {
    return value.fold(
      (ValueFailure<T> l) => some(l),
      (_) => none(),
    );
  }

  T? getOrNull() {
    return value.fold((ValueFailure<T> l) {}, id);
  }

  bool isValid() => value.isRight();
}
