import 'package:ecommerce7/core/localization/change_locale.dart';
import 'package:ecommerce7/core/localization/translation.dart';
import 'package:ecommerce7/routes.dart';
import 'package:ecommerce7/view/screen/language.dart';
import 'package:ecommerce7/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'core/constant/color.dart';
import 'core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 700),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        LocaleController localeController = Get.put(LocaleController());
        return GetMaterialApp(
            locale: localeController.language,
            translations: MyTranslation(),
            home: child,
            routes: routes,
            debugShowCheckedModeBanner: false,
            theme: localeController.appTheme);
      },
      child: const Language(),
    );
  }
}
