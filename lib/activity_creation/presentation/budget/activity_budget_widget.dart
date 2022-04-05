import 'dart:io';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:moony_app/activity_creation/resources/strings.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/base/widgets/set_infos_base_widget.dart';
import 'package:moony_app/common/domain/activity/model/budget.dart';
import 'package:moony_app/common/presentation/budget_formatter.dart';
import 'package:moony_app/common/presentation/validation_interactor.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/util/widgets/chip_widgets.dart';

/// Activity budget part
class ActivityBudgetWidget extends SetInfoBaseWidget<ActivityBudgetController> {
  @override
  IconData getPageIconHint() => Icons.monetization_on_outlined;

  @override
  String getPageTextHint() => activityBudgetTitle.translate();

  @override
  List<Widget> getWidgets(BuildContext context) => [
        SingleChoiceChipWidget(
          chipChoices: controller.budgetChoices,
          chipSelected: controller.currentBudget,
          listener: controller.onBudgetChanged,
        ),
      ];
}

/// ActivityBudget Controller
class ActivityBudgetController extends ValidationInteractor {
  /// Public constructor
  ActivityBudgetController(this._creationUseCase);

  final AsyncParamUseCase<Budget, void> _creationUseCase;

  /// Current budget choice
  String? currentBudget;

  /// Budget choice list
  Set<String> budgetChoices = BudgetWeight.getBudgetWeights().format(
    currency: NumberFormat(null, Platform.localeName).getCurrencyCode(),
  );

  /// onBudgetChanged callback
  void onBudgetChanged(int index, String budgetWeight) {
    BudgetWeight(input: BudgetWeight.getBudgetWeights().toList()[index])
        .value
        .fold((BudgetWeightFailure failure) {
      currentBudget = null;
      validationController.add(false);
    }, (int success) {
      _creationUseCase(
        input: Budget(
          currency: NumberFormat(null, Platform.localeName).getCurrencyCode(),
          weight: budgetWeight.toBudgetWeight(),
        ),
      );
      currentBudget = budgetWeight;
      validationController.add(true);
    });
  }
}
