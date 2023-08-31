import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_simple_state/Translations/translate.dart';
import 'Views/internationalization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(), // your translations
      locale: const Locale(
          'en', 'US'), // translations will be displayed in that locale
      fallbackLocale: const Locale('en',
          'UK'), // specify the fallback locale in case an invalid locale is selected.

      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      // home: const HomeScreen(),
      home: const Internationalization(),
    );
  }
}
