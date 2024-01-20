import 'package:ecommerce7/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class CustomButton extends GetView<OnBoardingControllerImp> {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Clrs.primaryColor,
      onPressed: () {
        controller.next();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 60.w),
        child: Text("Continue",
            style: TextStyle(color: Colors.white, fontSize: 20.sp)),
      ),
    );
  }
}
