import 'package:ecommerce7/controller/onboarding_controller.dart';
import 'package:ecommerce7/view/widget/onboarding/custom_dot_controller.dart';
import 'package:ecommerce7/view/widget/onboarding/custom_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widget/onboarding/custom_button.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 85.h, left: 40.w, right: 40.w),
          child: Column(
            children: [
              const Expanded(flex: 3, child: CustomSliderOnBoarding()),
              SizedBox(
                height: 40.h,
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const CustomDotController(),
                      SizedBox(
                        height: 20.h,
                      ),
                      const CustomButton(),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
