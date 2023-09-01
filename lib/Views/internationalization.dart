import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_simple_state/Controllers/counter_controller.dart';
import 'package:get_x_simple_state/themes/theme_helper.dart';

class Internationalization extends StatelessWidget {
  const Internationalization({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Controller()); //Register Controller global
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('App_bar'.tr),
        actions: [
          GetBuilder<Controller>(
            builder: (controller) => IconButton(
              icon: Icon(
                controller.isDarkMode == true
                    ? Icons.nightlight_outlined
                    : Icons.light_mode_outlined,
              ),
              onPressed: () {
                controller.toggleDarkMode(); //to change icon dark and lightMode
                //
                ThemHelper().saveTheme(controller.isDarkMode);
                ThemHelper().switchTheme();
                print(controller.isDarkMode);
              },
            ),
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
