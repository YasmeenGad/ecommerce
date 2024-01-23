import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/color.dart';

class CustomTxtFormField extends StatelessWidget {
  final String hintTxt;
  final String labelTxt;
  final IconData icon;
  final TextEditingController? myController;
  final String? Function(String?)? valid;
  final bool isNumber;
  final bool? obsecure;
  final void Function()? onTapIcon;

  const CustomTxtFormField({
    super.key,
    required this.hintTxt,
    required this.labelTxt,
    required this.icon,
    required this.myController,
    required this.valid,
    required this.isNumber,
    this.obsecure,
    this.onTapIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25.h),
      child: TextFormField(
        obscureText: obsecure == null || obsecure == false ? false : true,
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: valid,
        controller: myController,
        decoration: InputDecoration(
            label: Text("${labelTxt}"),
            hintText: "${hintTxt}",
            hintStyle: TextStyle(fontSize: 16.sp),
            suffixIcon:
                InkWell(onTap: onTapIcon, child: Icon(icon, color: Clrs.grey)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                EdgeInsets.symmetric(vertical: 5.h, horizontal: 35.w),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
