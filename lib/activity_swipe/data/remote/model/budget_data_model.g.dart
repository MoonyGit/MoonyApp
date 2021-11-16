// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budget_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BudgetDataModel _$BudgetDataModelFromJson(Map<String, dynamic> json) =>
    BudgetDataModel(
      currency: json['currency'] as String,
      lowerRange: json['lowerRange'] as int?,
      higherRange: json['higherRange'] as int?,
      isFree: json['isFree'] as bool,
    );

Map<String, dynamic> _$BudgetDataModelToJson(BudgetDataModel instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'lowerRange': instance.lowerRange,
      'higherRange': instance.higherRange,
      'isFree': instance.isFree,
    };
