import 'package:ecommerce7/controller/auth/sign_up_controller.dart';
import 'package:ecommerce7/core/constant/color.dart';
import 'package:ecommerce7/view/widget/auth/txt_body_auth.dart';
import 'package:ecommerce7/view/widget/auth/txt_form_field.dart';
import 'package:ecommerce7/view/widget/auth/txt_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/forget_password_controller.dart';

import '../../../controller/auth/check_email_controller.dart';
import '../../widget/auth/button_auth.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Clrs.backgroundcolor,
        elevation: 0.0,
        title: Text(
          "19".tr,
          style:
              Theme.of(context).textTheme.headline1!.copyWith(color: Clrs.grey),
        ),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 40.w),
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
                hintTxt: "9".tr,
                labelTxt: "8".tr,
                icon: Icons.email_outlined,
                myController: controller.email,
              ),
              CustomButtonAuth(
                txt: "20".tr,
                onPressed: () {
                  controller.goToSuccessSignUp();
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
