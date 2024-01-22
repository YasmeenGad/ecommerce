import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/route_name.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();

  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController rePassword;
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  resetPassword() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("valid");
    } else {
      print("not valid");
    }
  }

  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoute.successResetPassword);
  }

  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }
}
