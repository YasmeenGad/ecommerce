import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/route_name.dart';

abstract class SignInController extends GetxController {
  signIn();

  goToSignUp();

  goToForgetPassword();
}

class SignInControllerImp extends SignInController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;

  @override
  signIn() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("valid");
    } else {
      print("not valid");
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.offNamed(AppRoute.forgetPassword);
    throw UnimplementedError();
  }
}
