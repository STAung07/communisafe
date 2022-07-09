import 'package:communiSAFE/constants/firebase_auth_constants.dart';
import 'package:communiSAFE/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:communiSAFE/modules/home/controllers/home_controller.dart';
import 'package:communiSAFE/modules/log_in/controllers/auth_controller.dart';
import 'package:communiSAFE/modules/report/controllers/report_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/routes/app_pages.dart';
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
    Get.put(HomeController());
    Get.put(DashboardController());
  });

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
