import 'package:get/get.dart';

class Controller extends GetxController {
  var counter = 0;

  void increment() {
    counter++;
    // ignore: avoid_print
    print(counter);
    update();
  }
}
