import 'package:get/get.dart';

class DarkSystem extends GetxController {
  var isDark = false.obs;

  void changeTheme() {
    isDark.value = !isDark.value;
  }
}
