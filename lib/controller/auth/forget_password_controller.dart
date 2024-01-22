import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/route_name.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();

  goToVerifyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController email;
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  checkEmail() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("valid");
    } else {
      print("not valid");
    }
  }

  @override
  goToVerifyCode() {
    Get.offNamed(AppRoute.verifyCode);
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
