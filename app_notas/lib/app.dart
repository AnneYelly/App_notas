import 'package:app_notas/configuration/router/pages.dart';
import 'package:app_notas/configuration/router/routes.dart';
import 'package:app_notas/configuration/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AppNotas extends StatelessWidget {
  const AppNotas({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'App Notas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: AppColors.lastColor, ),
      defaultTransition: Transition.fade,
      home: const Text('Hola mundo'),
      initialRoute: Routes.splash,
      getPages: Pages.page.map((page) {
  return GetPage(name: page.name,page: () => page.page(),binding: page.binding,);
}).toList(),
      locale: const Locale('es', 'ES'),
      supportedLocales: const [
      Locale('es', 'PE'),
      ],
    );
  }
}
