import 'package:app_notas/configuration/router/routes.dart';
import 'package:app_notas/presentation/login/login_binding.dart';
import 'package:app_notas/presentation/login/login_view.dart';
import 'package:app_notas/presentation/splash/splash_binding.dart';
import 'package:app_notas/presentation/splash/splash_view.dart';
import 'package:get/route_manager.dart';

abstract class Pages {
  static final List<GetPage> page = [
    GetPage(name: Routes.splash, page: () => const SplashView(), binding: SplashBinding()),
    GetPage(name: Routes.login, page: () => const LoginView(), binding: LoginBinding()),
  ];
}

