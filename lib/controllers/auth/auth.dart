import 'package:get/get.dart';

class AuthController extends GetxController {
  RxBool agreeClicked = false.obs;
  void agreeChange(bool value) {
    agreeClicked.value = value;
    update();
  }
}
