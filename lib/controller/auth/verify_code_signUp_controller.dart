import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/route_name.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();

  goToSuccessSignUp();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  late String verifyCode;

  @override
  checkCode() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
