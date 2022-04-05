import 'package:collection/src/iterable_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/util/logger.dart';

/// Constrained controller to extends to use constraints
abstract class ConstrainedController extends GetxController {
  /// Constructor
  ConstrainedController(this._constraintList);

  final List<Constraint> _constraintList;

  /// Constraints list as Pair of Rx and widget
  late final List<MapEntry<RxnBool, Widget>> constraintList = _constraintList
      .map((Constraint item) => MapEntry<RxnBool, Widget>(
          RxnBool()..bindStream(item.constraint), item.widget))
      .toList();
}

/// Constrained page to extends to use constraints
abstract class ConstrainedPage<Controller extends ConstrainedController>
    extends GetView<Controller> {
  /// Constructor
  const ConstrainedPage({Key? key}) : super(key: key);
  @override
  @mustCallSuper
  Widget build(BuildContext context) => Obx(() => (controller.constraintList
              .firstWhereOrNull((MapEntry<RxnBool, Widget> element) =>
                  element.key.value == false)
              ?.value ??
          buildWidget(context))
      .also((Widget it) => Logger.d("Widget draw: $it")));

  /// Method to be implemented in child classes
  Widget buildWidget(BuildContext context);
}

/// Constraint model
abstract class Constraint {
  /// Constructor
  Constraint(this.constraint, this.widget);

  /// Stream of result that satisfy or not the constraint
  final Stream<bool> constraint;

  /// The widget to show if the constraint return false
  final Widget widget;
}

/// No internet constraint shortcut
class NoInternetConstraint extends Constraint {
  /// Constructor
  NoInternetConstraint(Stream<bool> constraint)
      : super(constraint,
            const Center(child: Text("Error no internet connection")));
}

/// Geolocation constraint shortcut
class NoLocationConstraint extends Constraint {
  /// Constructor
  NoLocationConstraint(Stream<bool> constraint)
      : super(constraint,
            const Center(child: Text("Error location not activated")));
}
