// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budget_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BudgetDataModel _$BudgetDataModelFromJson(Map<String, dynamic> json) =>
    BudgetDataModel(
      currencyCode: json['currencyCode'] as String,
      weight: json['weight'] as int,
    );

Map<String, dynamic> _$BudgetDataModelToJson(BudgetDataModel instance) =>
    <String, dynamic>{
      'currencyCode': instance.currencyCode,
      'weight': instance.weight,
    };
