import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get_x_simple_state/Translations/translate.dart';
import 'package:get_x_simple_state/themes/theme_helper.dart';
import 'Views/internationalization.dart';

void main() async {
  await GetStorage.init(); //to use local storage;
  runApp(const MyApp());
}

Future<bool> getTheme() async {
  final ThemHelper helper = ThemHelper();
  final data = helper.theme;
  return data;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getTheme(),
      builder: (context, snapshot) {
        return GetMaterialApp(
          //set for Display on darkMode
          darkTheme: ThemeData.dark().copyWith(
            colorScheme: ThemeData.dark().colorScheme,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.black12,
              elevation: 0,
              foregroundColor: Colors.white,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
              iconTheme: IconThemeData(color: Colors.white),
            ),
            textTheme: ThemeData.dark().textTheme.apply(
                  bodyColor: Colors.white,
                  //you can set fontFamily and add font like this
                  //fontFamily: "Battambong",
                ),
          ),
          //set for Display on LightMode
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
            useMaterial3: true,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.blue,
              // elevation: 0,
              // foregroundColor: Colors.white,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
              iconTheme: IconThemeData(color: Colors.white),
            ),
          ).copyWith(
            //you add texttheme
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.blue,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
              iconTheme: IconThemeData(color: Colors.white),
            ),
          ),

          themeMode: snapshot.data == true ? ThemeMode.dark : ThemeMode.light,
          translations: Messages(), // your translations
          locale: const Locale(
              'en', 'US'), // translations will be displayed in that locale
          fallbackLocale: const Locale('en',
              'UK'), // specify the fallback locale in case an invalid locale is selected.

          debugShowCheckedModeBanner: false,
          // home: const HomeScreen(),
          home: const Internationalization(),
        );
      },
    );
  }
}
