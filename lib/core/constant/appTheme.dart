import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color.dart';

ThemeData themeEnglish = ThemeData(
    fontFamily: "PlayfairDisplay",
    textTheme: TextTheme(
      headline1: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 25.sp, color: Clrs.black),
      headline2: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 29.sp, color: Clrs.black),
      bodyText1: TextStyle(
        fontSize: 18.sp,
        height: 1.3.h,
        color: Clrs.grey,
        fontWeight: FontWeight.w400,
      ),
    ));
ThemeData themeArabic = ThemeData(
    fontFamily: "Cairo",
    textTheme: TextTheme(
      headline1: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 25.sp, color: Clrs.black),
      headline2: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 29.sp, color: Clrs.black),
      bodyText1: TextStyle(
        fontSize: 18.sp,
        height: 1.3.h,
        color: Clrs.grey,
        fontWeight: FontWeight.w400,
      ),
    ));
