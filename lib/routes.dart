import 'package:ecommerce7/core/constant/route_name.dart';
import 'package:ecommerce7/view/screen/auth/check_email.dart';
import 'package:ecommerce7/view/screen/auth/forgetPassword/forget_password.dart';
import 'package:ecommerce7/view/screen/auth/forgetPassword/reset_password.dart';
import 'package:ecommerce7/view/screen/auth/login.dart';
import 'package:ecommerce7/view/screen/auth/sign_up.dart';
import 'package:ecommerce7/view/screen/auth/forgetPassword/success_reset_password.dart';
import 'package:ecommerce7/view/screen/auth/success_sign_up.dart';
import 'package:ecommerce7/view/screen/auth/forgetPassword/verify_code.dart';
import 'package:ecommerce7/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verifyCode: (context) => const VerifyCode(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
  AppRoute.successResetPassword: (context) => const SuccessResetPassword(),
  AppRoute.successSignUp: (context) => const SuccessSignUp(),
  AppRoute.checkEmail: (context) => const CheckEmail(),
  AppRoute.onBoarding: (context) => const OnBoarding(),
};
