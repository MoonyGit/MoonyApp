import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';

/// Validation abstraction
abstract class ValidationInteractor extends GetxController {
  final BehaviorSubject<bool> validationController =
      BehaviorSubject<bool>.seeded(false);

  /// Validation input callback
  ValueStream<bool> getValidatedInput() => validationController;

  @override
  void onClose() {
    validationController.close();
    super.onClose();
  }
}
