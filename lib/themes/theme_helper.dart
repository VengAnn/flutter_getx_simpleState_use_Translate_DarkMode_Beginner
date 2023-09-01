import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get_storage/get_storage.dart';

class ThemHelper {
  final box = GetStorage();
  final key = "isDark";

  // ThemHelper() {
  //   // Initialize the theme preference from local storage when the class is created.
  //   Get.changeThemeMode(loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light);
  // }

  /// Get isDarkMode info from local storage and return ThemeMode
  bool get theme => loadThemeFromBox() ? true : false;

  // Save isDarkMode to local storage
  void saveTheme(bool isDark) {
    box.write(key, isDark);
  }

  //get Dark from local to show use box.read ;
  bool loadThemeFromBox() {
    final isDark = box.read(key);
    print('isDark $isDark');
    if (isDark == null) {
      //show false lighmode
      return false;
    }
    if (isDark) {
      //is dark true return;
      return true;
    } else {
      return false;
    }
  }

  // /// Switch theme and save to local storage
  void switchTheme() {
    Get.changeThemeMode(loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light);
    saveTheme(loadThemeFromBox() == true ? true : false);
    loadThemeFromBox();
  }

  //way2 to make it.
  /// Save isDarkMode to local storage
  // saveThemeToBox(bool isDarkMode) => box.write(key, isDarkMode);

  // /// Load isDarkMode from local storage and if it's empty, returns false (that means default theme is light)
  // bool _loadThemeFromBox() => box.read(key) ?? false;

  // /// Get isDarkMode info from local storage and return ThemeMode
  // ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  // /// Switch theme and save to local storage
  // void switchTheme() {
  //   // Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
  //   saveThemeToBox(_loadThemeFromBox());
  // }
}
