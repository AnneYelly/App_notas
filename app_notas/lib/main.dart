import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_notas/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const AppNotas());
}
