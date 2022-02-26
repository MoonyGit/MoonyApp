import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';
import 'package:moony_app/common/domain/activity/model/currency_code.dart';

/// Budget class
class Budget {
  /// Constructor
  Budget({required this.currency, required this.weight});

  /// Currency
  final CurrencyCode currency;

  /// Lower range
  final BudgetWeight weight;
}

/// Activity budget failure
class BudgetWeightFailure extends Failure {}

/// ActivityTitle value object class
class BudgetWeight
    extends ValueObject<BudgetWeightFailure, int> {
  const BudgetWeight._(this.value);

  /// Factory constructor
  factory BudgetWeight({required int input}) {
    if (input < minWeight && input > maxWeight) {
      return BudgetWeight._(
        left(
          BudgetWeightFailure(),
        ),
      );
    } else {
      return BudgetWeight._(right(input));
    }
  }

  @override
  final Either<BudgetWeightFailure, int> value;

  /// Min weight
  static const int minWeight = 0;
  /// Max weight
  static const int maxWeight = 3;

  /// get as list
  static Set<int> getBudgetWeights() =>
      <int>{for (int i = minWeight; i < maxWeight + 1; i += 1) i};
}
