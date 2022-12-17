import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getSceenHeight() {
    return Get.height;
  }

  static getSceenWidth() {
    return Get.width;
  }

  static getHight(double pixels) {
    double x = getSceenHeight() / pixels;

    return getSceenHeight() / x;
  }

  static getWidth(double pixels) {
    double x = getSceenWidth() / pixels;

    return getSceenWidth() / x;
  }
}
