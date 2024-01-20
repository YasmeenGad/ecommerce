import 'package:ecommerce7/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../data/data_source/static/static.dart';

class CustomDotController extends StatelessWidget {
  const CustomDotController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      init: OnBoardingControllerImp(),
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              onBoardingList.length,
              (index) => AnimatedContainer(
                margin: const EdgeInsets.all(2),
                duration: const Duration(milliseconds: 300),
                width: controller.currentPage == index ? 25.w : 10.w,
                height: 10.h,
                decoration: BoxDecoration(
                    color: Clrs.primaryColor,
                    borderRadius: BorderRadius.circular(10)),
              ),
            )
          ],
        );
      },
    );
  }
}
