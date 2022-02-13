import 'package:flutter/material.dart';
import 'package:moony_app/common/application/app_widget.dart';
import 'package:moony_app/flavors.dart';

import 'common/data/services/backend/backend.dart';

Future<void> main() async {
  F.appFlavor = Flavor.STAGING;
  WidgetsFlutterBinding.ensureInitialized();
  await Backend.getInstance().init();
  runApp(MoonyApp());
}

