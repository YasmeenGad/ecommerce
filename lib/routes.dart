import 'package:ecommerce7/core/constant/route_name.dart';
import 'package:ecommerce7/view/screen/auth/login.dart';

import 'package:ecommerce7/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.onBoarding: (context) => const OnBoarding()
};
