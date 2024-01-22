import 'package:ecommerce7/controller/auth/sign_up_controller.dart';
import 'package:ecommerce7/core/constant/color.dart';
import 'package:ecommerce7/core/functions/alert_exit_app.dart';
import 'package:ecommerce7/view/widget/auth/txt_body_auth.dart';
import 'package:ecommerce7/view/widget/auth/txt_form_field.dart';
import 'package:ecommerce7/view/widget/auth/txt_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/functions/valid_input.dart';
import '../../widget/auth/button_auth.dart';
import '../../widget/auth/txt_sign_up.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Clrs.backgroundcolor,
          elevation: 0.0,
          title: Text(
            "15".tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: Clrs.grey),
          ),
          centerTitle: true,
        ),
        body: GetBuilder<SignUpControllerImp>(
            builder: (controller) => WillPopScope(
                  onWillPop: alertExitApp,
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.h, horizontal: 40.w),
                      child: Form(
                        key: controller.formState,
                        child: ListView(
                          children: [
                            CustomTxtTitleAuth(txt: "4".tr),
                            SizedBox(
                              height: 12.h,
                            ),
                            CustomTxtBodyAuth(txt: "5".tr),
                            SizedBox(
                      height: 70.sp,
                    ),
                    CustomTxtFormField(
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 5, 100, "username");
                      },
                      hintTxt: "7".tr,
                      labelTxt: "6".tr,
                      icon: Icons.person,
                      myController: controller.username,
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
                    CustomTxtFormField(
                      isNumber: true,
                      valid: (val) {
                        return validInput(val!, 8, 11, "phone");
                      },
                      hintTxt: "11".tr,
                      labelTxt: "10".tr,
                      icon: Icons.phone,
                      myController: controller.phone,
                    ),
                    CustomTxtFormField(
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 5, 30, "password");
                      },
                      hintTxt: "13".tr,
                      labelTxt: "12".tr,
                      icon: Icons.lock_outline,
                      myController: controller.password,
                    ),
                    CustomButtonAuth(
                      txt: "15".tr,
                      onPressed: () {
                        controller.signUp();
                      },
                    ),
                    SizedBox(
                              height: 12.h,
                            ),
                            CustomTxtAuth(
                                txt1: "18".tr,
                                txt2: "17".tr,
                                onTap: () {
                                  controller.goToSignIn();
                                }),
                          ],
                        ),
                      )),
                )));
  }
}
