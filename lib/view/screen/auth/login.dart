import 'package:ecommerce7/core/constant/color.dart';
import 'package:ecommerce7/core/functions/alert_exit_app.dart';
import 'package:ecommerce7/core/functions/valid_input.dart';
import 'package:ecommerce7/view/widget/auth/logo_auth.dart';
import 'package:ecommerce7/view/widget/auth/txt_body_auth.dart';
import 'package:ecommerce7/view/widget/auth/txt_form_field.dart';
import 'package:ecommerce7/view/widget/auth/txt_sign_up.dart';
import 'package:ecommerce7/view/widget/auth/txt_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/auth/login_controller.dart';
import '../../widget/auth/button_auth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignInControllerImp controller = Get.put(SignInControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Clrs.backgroundcolor,
          elevation: 0.0,
          title: Text(
            "17".tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: Clrs.grey),
          ),
          centerTitle: true,
        ),
        body: WillPopScope(
          onWillPop: alertExitApp,
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 40.w),
              child: Form(
                key: controller.formState,
                child: ListView(
                  children: [
                    LogoAuth(),
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
                        return validInput(val!, 8, 50, "email");
                      },
                      hintTxt: "9".tr,
                      labelTxt: "8".tr,
                      icon: Icons.email_outlined,
                      myController: controller.email,
                      // myController: myController
                    ),
                    GetBuilder<SignInControllerImp>(
                      builder: (controller) => CustomTxtFormField(
                        obsecure: controller.isShowPassword,
                        onTapIcon: () {
                          controller.showPassword();
                        },
                        isNumber: false,
                        valid: (val) {
                          return validInput(val!, 5, 30, "password");
                        },
                        hintTxt: "13".tr,
                        labelTxt: "12".tr,
                        icon: Icons.password,
                        myController: controller.password,

                        // myController: myController
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.goToForgetPassword();
                      },
                      child: Text(
                        "16".tr,
                        textAlign: TextAlign.end,
                      ),
                    ),
                    CustomButtonAuth(
                      txt: "17".tr,
                      onPressed: () {
                        controller.signIn();
                      },
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    CustomTxtAuth(
                        txt1: "14".tr,
                        txt2: "15".tr,
                        onTap: () {
                          controller.goToSignUp();
                        }),
                  ],
                ),
              )),
        ));
  }
}
