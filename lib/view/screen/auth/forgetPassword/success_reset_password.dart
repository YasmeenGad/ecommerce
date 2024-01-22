import 'package:ecommerce7/controller/auth/success_reset_password_controller.dart';
import 'package:ecommerce7/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../widget/auth/button_auth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =
        Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Clrs.backgroundcolor,
        elevation: 0.0,
        title: Text(
          "30".tr,
          style:
              Theme.of(context).textTheme.headline1!.copyWith(color: Clrs.grey),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
        child: Column(
          children: [
            Center(
                child: Icon(
              Icons.check_circle_outline,
              size: 200,
              color: Clrs.primaryColor,
            )),
            Text("31".tr,
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 30)),
            Text("43".tr),
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              child: CustomButtonAuth(
                txt: "17".tr,
                onPressed: () {
                  controller.goToPageLogin();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
