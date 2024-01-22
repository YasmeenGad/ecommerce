import 'package:ecommerce7/controller/auth/sign_up_controller.dart';
import 'package:ecommerce7/core/constant/color.dart';
import 'package:ecommerce7/view/widget/auth/txt_body_auth.dart';
import 'package:ecommerce7/view/widget/auth/txt_form_field.dart';
import 'package:ecommerce7/view/widget/auth/txt_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/forget_password_controller.dart';
import '../../../../controller/auth/reset_password_controller.dart';
import '../../../../core/functions/valid_input.dart';
import '../../../widget/auth/button_auth.dart';
import '../../../widget/auth/txt_sign_up.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Clrs.backgroundcolor,
        elevation: 0.0,
        title: Text(
          "25".tr,
          style:
              Theme.of(context).textTheme.headline1!.copyWith(color: Clrs.grey),
        ),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 40.w),
          child: ListView(
            children: [
              CustomTxtTitleAuth(txt: "26".tr),
              SizedBox(
                height: 12.h,
              ),
              CustomTxtBodyAuth(txt: "27".tr),
              SizedBox(
                height: 70.sp,
              ),
              CustomTxtFormField(
                valid: (val) {
                  return validInput(val!, 5, 30, "password");
                },
                hintTxt: "13".tr,
                labelTxt: "12".tr,
                icon: Icons.lock_outline,
                myController: controller.password,
              ),
              CustomTxtFormField(
                valid: (val) {
                  return validInput(val!, 5, 30, "password");
                },
                hintTxt: "29".tr,
                labelTxt: "12".tr,
                icon: Icons.lock_outline,
                myController: controller.rePassword,
              ),
              CustomButtonAuth(
                txt: "28".tr,
                onPressed: () {
                  controller.goToSuccessResetPassword();
                },
              ),
              SizedBox(
                height: 12.h,
              ),
            ],
          )),
    );
  }
}
