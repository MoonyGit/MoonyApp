import 'package:get/get.dart';
import 'package:moony_app/common/di/di_module.dart' as common_module;
import 'package:moony_app/features/authentication/di/di_module.dart'
    as auth_module;
import 'package:moony_app/features/registration/di/di_module.dart' as registration_module;

/// Application global dependencies
class AppBinding extends Bindings {
  @override
  void dependencies() {
    common_module.loadModule();
    registration_module.loadModule();
    auth_module.loadModule();
  }
}
