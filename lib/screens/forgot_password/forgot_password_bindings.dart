import 'package:get/get.dart';
import 'package:tradino_flutter/screens/forgot_password/forgot_password_controller.dart';

class ForgotPasswordBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordController());
    // TODO: implement dependencies
  }
}
