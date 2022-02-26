import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moony_app/common/domain/activity/model/budget.dart';
import 'package:moony_app/common/domain/activity/model/currency_code.dart';

part 'budget_data_model.g.dart';

/// Budget class
@JsonSerializable()
class BudgetDataModel {
  /// Constructor
  BudgetDataModel({required this.currencyCode, required this.weight});

  /// Convert Object from json
  factory BudgetDataModel.fromJson(Map<String, dynamic> json) =>
      _$BudgetDataModelFromJson(json);

  /// Currency code
  final String currencyCode;

  /// Weight
  final int weight;
}

/// Budget mapper
extension BudgetMapper on BudgetDataModel {
  /// Mapper method
  Budget toDomain() => Budget(
        currency: CurrencyCode(input: currencyCode),
        weight: BudgetWeight(input: weight),
      );
}
