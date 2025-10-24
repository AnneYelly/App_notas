import 'dart:async';

import 'package:app_notas/configuration/router/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{
Timer? _timer;
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    animatePage();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    _timer?.cancel();
  }

  void animatePage(){
    //_timer = Timer(const Duration(seconds: 3), callbackAnimated);
    //Get.offNamed(Routes.login);
    Future.delayed(const Duration(milliseconds: 2000), () {}).then((_) {
      Get.offNamed(Routes.login);
     }); 
    }

  void callbackAnimated() {
    Get.offNamed(Routes.login);
  }
}