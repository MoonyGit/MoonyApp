import 'package:flutter/material.dart';
import 'package:moony_app/common/application/app_widget.dart';
import 'package:moony_app/flavors.dart';

Future<void> main() async {
  F.appFlavor = Flavor.MOCK;
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MoonyApp());
}
