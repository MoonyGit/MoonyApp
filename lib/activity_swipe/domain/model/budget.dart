/// Budget class
class Budget {
  /// Constructor
  Budget(
      {required this.currency,
      this.lowerRange,
      this.higherRange,
      required this.isFree});

  /// Currency
  final String currency;

  /// Lower range
  final int? lowerRange;

  /// Higher range
  final int? higherRange;

  /// Is free
  final bool isFree;
}
