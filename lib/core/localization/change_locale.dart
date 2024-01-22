import 'dart:ui';

import 'package:ecommerce7/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/appTheme.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();
  ThemeData appTheme = themeEnglish;

  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString("lang", langCode);
    appTheme = langCode == "Arabic" ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "Arabic") {
      language = const Locale("Arabic");
      appTheme = themeArabic;
    } else if (sharedPrefLang == "English") {
      language = const Locale("English");
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
    }

    super.onInit();
  }
}
