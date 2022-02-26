import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/domain/activity/model/budget.dart';
import 'package:moony_app/common/domain/activity/model/currency_code.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:intl/intl.dart';
import 'package:intl/number_symbols_data.dart';
import 'package:intl/number_symbols.dart';

/// Extension to format Budget to a String
extension BudgetFormatter on Budget {
  /// Formatter method
  String format() => weight.format(currency: currency);
}

/// Extension to format BudgetWeight to a String
extension BudgetWeightFormatter on BudgetWeight {
  /// Formatter method
  String format({required CurrencyCode currency}) {
    try {
      return getOrCrash().let((int weight) {
        return weight == 0
            ? AppStrings.freeEmoji
            : List<String>.filled(
                weight,
                NumberFormat.simpleCurrency(
                  name: currency.getOrCrash(),
                ).currencySymbol,
              ).join();
      });
    } catch (ex) {
      Logger.e(ex);
      return "Error";
    }
  }
}

/// Extension to format BudgetWeight to a String
extension BudgetWeightRawFormatter on int {
  /// Formatter method
  String format({required CurrencyCode currency}) =>
      BudgetWeight(input: this).format(currency: currency);
}

/// Extension to format BudgetWeight Set to a Set of String
extension BudgetWeightRawListFormatter on Set<int> {
  /// Formatter method
  Set<String> format({required CurrencyCode currency}) =>
      map((int weight) => weight.format(currency: currency)).toSet();
}

/// Mapper extension that convert string to budget weight
extension BudgetWeightFromString on String {
  /// Mapper method
  BudgetWeight toBudgetWeight() => BudgetWeight(input: length);
}

/// Mapper extension to get currency code from NumberFormat
extension CurrencyCodeIntl on NumberFormat {
  /// getter method
  CurrencyCode getCurrencyCode() => CurrencyCode(
        input: (numberFormatSymbols[locale] as NumberSymbols).DEF_CURRENCY_CODE,
      );
}
