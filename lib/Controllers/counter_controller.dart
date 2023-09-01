import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var counter = 0;

  void increment() {
    counter++;
    // ignore: avoid_print
    print(counter);
    update();
  }

  //
  bool isDarkMode = true;

  void toggleDarkMode() {
    isDarkMode = !isDarkMode;

    if (isDarkMode) {
      //true
      //isDarkMode true show darkMode
      Get.changeTheme(ThemeData.dark());
    } else {
      Get.changeTheme(ThemeData.light());
    }
    update();
    // print(isDarkMode);
  }
}
