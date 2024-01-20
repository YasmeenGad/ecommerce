import 'package:ecommerce7/core/constant/color.dart';
import 'package:ecommerce7/view/widget/auth/logo_auth.dart';
import 'package:ecommerce7/view/widget/auth/txt_body_auth.dart';
import 'package:ecommerce7/view/widget/auth/txt_form_field.dart';
import 'package:ecommerce7/view/widget/auth/txt_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widget/auth/button_auth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Clrs.backgroundcolor,
        elevation: 0.0,
        title: Text(
          "Sign In",
          style:
              Theme.of(context).textTheme.headline1!.copyWith(color: Clrs.grey),
        ),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 40.w),
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
                hintTxt: "enter your email",
                labelTxt: "Email",
                icon: Icons.email_outlined,
                // myController: myController
              ),
              CustomTxtFormField(
                hintTxt: "enter your password",
                labelTxt: "Password",
                icon: Icons.lock_outline,
                // myController: myController
              ),
              Text(
                "Forget Password",
                textAlign: TextAlign.end,
              ),
              CustomButtonAuth(
                txt: "Sign In",
                onPressed: () {},
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don;t have an account?"),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Clrs.primaryColor, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          )),
    );
  }
}
