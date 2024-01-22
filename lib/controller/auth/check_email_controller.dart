import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/route_name.dart';

abstract class CheckEmailController extends GetxController {
  checkEmail();

  goToSuccessSignUp();
}

class CheckEmailControllerImp extends CheckEmailController {
  late TextEditingController email;

  @override
  checkEmail() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.verifyCodeSignUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
