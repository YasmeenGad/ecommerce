import 'package:ecommerce7/core/constant/color.dart';
import 'package:ecommerce7/core/constant/route_name.dart';
import 'package:ecommerce7/core/localization/change_locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widget/language/button_lang.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "1".tr,
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomButtonLang(
              txtBtn: "2".tr,
              onPressed: () {
                controller.changeLang("Arabic");
                Get.toNamed(AppRoute.onBoarding);
              }),
          SizedBox(
            height: 5.h,
          ),
          CustomButtonLang(
              txtBtn: "3".tr,
              onPressed: () {
                controller.changeLang("English");
                Get.toNamed(AppRoute.onBoarding);
              }),
        ]),
      ),
    );
  }
}
