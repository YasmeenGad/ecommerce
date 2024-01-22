import 'package:ecommerce7/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../data/data_source/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Text(
              "${onBoardingList[index].title!}",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.sp,
                  color: Clrs.black),
            ),
            SizedBox(
              height: 50.h,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "${onBoardingList[index].image!}",
                width: 350.w,
                height: 200.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: Text(
                "${onBoardingList[index].body!}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.sp,
                  height: 1.3.h,
                  color: Clrs.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
