import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(title: "50".tr, middleText: "51".tr, actions: [
    MaterialButton(
      onPressed: () {
        exit(0);
      },
      child: Text("52".tr),
    ),
    MaterialButton(
      onPressed: () {
        Get.back();
      },
      child: Text("53".tr),
    ),
  ]);
  return Future.value(true);
}
