import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class LogInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
      () => AuthController(),
    );
  }
}
