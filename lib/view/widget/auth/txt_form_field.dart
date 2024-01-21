import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/color.dart';

class CustomTxtFormField extends StatelessWidget {
  final String hintTxt;
  final String labelTxt;
  final IconData icon;
  final TextEditingController? myController;

  const CustomTxtFormField(
      {super.key,
      required this.hintTxt,
      required this.labelTxt,
      required this.icon,
      required this.myController});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25.h),
      child: TextFormField(
        controller: myController,
        decoration: InputDecoration(
            label: Text("${labelTxt}"),
            hintText: "${hintTxt}",
            hintStyle: TextStyle(fontSize: 16.sp),
            suffixIcon: Icon(icon, color: Clrs.grey),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                EdgeInsets.symmetric(vertical: 5.h, horizontal: 35.w),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
