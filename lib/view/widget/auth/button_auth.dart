import 'package:ecommerce7/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonAuth extends StatelessWidget {
  final void Function()? onPressed;
  final String txt;

  const CustomButtonAuth({super.key, this.onPressed, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12.h),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.symmetric(vertical: 12.h),
        color: Clrs.primaryColor,
        textColor: Clrs.white,
        onPressed: onPressed,
        child: Text("${txt}"),
      ),
    );
  }
}
