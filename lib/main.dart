import 'package:flutter/material.dart';
import 'package:moony_app/common/application/app_widget.dart';

import 'common/data/services/backend/backend.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Backend.getInstance().init();
  runApp(MoonyApp());
}

