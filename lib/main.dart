import 'package:communisafe/constants/firebase_auth_constants.dart';
import 'package:communisafe/modules/log_in/controllers/auth_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'routes/app_pages.dart';

// void main() {
//   runApp(
//     GetMaterialApp(
//       title: "Application",
//       initialRoute: AppPages.INITIAL,
//       getPages: AppPages.routes,
//     ),
//   );
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await firebaseInitialization.then((value) {
    Get.put(AuthController());
  });

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
