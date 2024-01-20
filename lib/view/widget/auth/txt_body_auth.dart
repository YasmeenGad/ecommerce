import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTxtBodyAuth extends StatelessWidget {
  final String txt;

  const CustomTxtBodyAuth({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.w),
      child: Text(
        txt,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16.sp),
      ),
    );
  }
}
