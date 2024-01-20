import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/color.dart';

class CustomButtonLang extends StatelessWidget {
  final void Function()? onPressed;
  final String txtBtn;

  const CustomButtonLang({required this.txtBtn, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100.w),
      width: MediaQuery.of(context).size.width,
      child: MaterialButton(
        textColor: Clrs.white,
        color: Clrs.primaryColor,
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 8.h,
          ),
          child: Text(
            "${txtBtn}",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Clrs.white,
                fontSize: 20.sp),
          ),
        ),
      ),
    );
  }
}
