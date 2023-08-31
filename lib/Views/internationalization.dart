import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Internationalization extends StatelessWidget {
  const Internationalization({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('App_bar'.tr),
        actions: [
          IconButton(
            onPressed: () {
              Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
            },
            icon: const Icon(Icons.nightlight_outlined),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text('Text_1'.tr),
          const SizedBox(
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  var locale = const Locale('km', 'KH');
                  Get.updateLocale(locale);
                },
                child: const Text("Khmer"),
              ),
            ],
          ),
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  var locale = const Locale('en', 'US');
                  Get.updateLocale(locale);
                },
                child: const Text("English"),
              ),
            ],
          ),
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  var locale = const Locale('vn', 'VN');
                  Get.updateLocale(locale);
                },
                child: const Text("VietName"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
