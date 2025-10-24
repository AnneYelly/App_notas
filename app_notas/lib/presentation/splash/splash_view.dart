import 'package:app_notas/configuration/theme/app_text_styles.dart';
import 'package:app_notas/presentation/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:app_notas/configuration/theme/app_colors.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

 @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (_) => Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.check,
                size: 50,
                color: AppColors.colorWhite,
              ),
              Text(
                "Bienvenido",
                style: AppTextStyles.poppins24WhiteSemibold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
