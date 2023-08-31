import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_simple_state/Controllers/counter_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("Widget build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Simple State"),
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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text("You can click on floating Button to increment"),
            ),
            GetBuilder<Controller>(
              init: Controller(), //Register Controller
              builder: (controller) {
                return Center(
                  child: Text(controller.counter.toString()),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<Controller>().increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
