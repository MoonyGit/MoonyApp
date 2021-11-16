import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moony_app/activity_swipe/domain/model/budget.dart';


part 'budget_data_model.g.dart';

/// Budget class
@JsonSerializable()
class BudgetDataModel {
  /// Constructor
  BudgetDataModel(
      {required this.currency,
      this.lowerRange,
      this.higherRange,
      required this.isFree});

  /// Convert Object from json
  factory BudgetDataModel.fromJson(Map<String, dynamic> json) =>
      _$BudgetDataModelFromJson(json);

  /// Currency
  final String currency;

  /// Lower range
  final int? lowerRange;

  /// Higher range
  final int? higherRange;

  /// Is free
  final bool isFree;
}

/// Budget mapper
extension BudgetMapper on BudgetDataModel {
  /// Mapper method
  Budget toDomain() => Budget(
      currency: currency,
      isFree: isFree,
      lowerRange: lowerRange,
      higherRange: higherRange);
}
