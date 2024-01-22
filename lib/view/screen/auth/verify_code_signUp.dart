import 'package:ecommerce7/core/constant/color.dart';
import 'package:ecommerce7/view/widget/auth/txt_body_auth.dart';

import 'package:ecommerce7/view/widget/auth/txt_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/auth/verify_code_signUp_controller.dart';

class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeSignUpControllerImp controller =
        Get.put(VerifyCodeSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Clrs.backgroundcolor,
        elevation: 0.0,
        title: Text(
          "21".tr,
          style:
              Theme.of(context).textTheme.headline1!.copyWith(color: Clrs.grey),
        ),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 40.w),
          child: ListView(
            children: [
              CustomTxtTitleAuth(txt: "22".tr),
              SizedBox(
                height: 12.h,
              ),
              CustomTxtBodyAuth(txt: "24".tr),
              SizedBox(
                height: 70.sp,
              ),
              OtpTextField(
                fieldWidth: 50.0.w,
                borderRadius: BorderRadius.circular(20),
                numberOfFields: 5,
                borderColor: Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  controller.goToSuccessSignUp();
                }, // end onSubmit
              ),
            ],
          )),
    );
  }
}
