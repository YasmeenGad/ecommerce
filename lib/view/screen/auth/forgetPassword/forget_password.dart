import 'package:ecommerce7/controller/auth/sign_up_controller.dart';
import 'package:ecommerce7/core/constant/color.dart';
import 'package:ecommerce7/view/widget/auth/txt_body_auth.dart';
import 'package:ecommerce7/view/widget/auth/txt_form_field.dart';
import 'package:ecommerce7/view/widget/auth/txt_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/forget_password_controller.dart';
import '../../../../core/functions/valid_input.dart';
import '../../../widget/auth/button_auth.dart';
import '../../../widget/auth/txt_sign_up.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Clrs.backgroundcolor,
        elevation: 0.0,
        title: Text(
          "16".tr,
          style:
              Theme.of(context).textTheme.headline1!.copyWith(color: Clrs.grey),
        ),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 40.w),
          child: Form(
            key: controller.formState,
            child: ListView(
              children: [
                CustomTxtTitleAuth(txt: "19".tr),
                SizedBox(
                  height: 12.h,
                ),
                CustomTxtBodyAuth(txt: "23".tr),
                SizedBox(
                  height: 70.sp,
                ),
                CustomTxtFormField(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 8, 50, "email");
                  },
                  hintTxt: "9".tr,
                  labelTxt: "8".tr,
                  icon: Icons.email_outlined,
                  myController: controller.email,
                ),
                CustomButtonAuth(
                  txt: "20".tr,
                  onPressed: () {
                    controller.checkEmail();
                    controller.goToVerifyCode();
                  },
                ),
                SizedBox(
                  height: 12.h,
                ),
              ],
            ),
          )),
    );
  }
}
