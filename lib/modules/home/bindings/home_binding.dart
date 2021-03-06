import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../../report/controllers/report_controller.dart';
import '../../dashboard/controllers/dashboard_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    // Get.lazyPut<ReportController>(
    //       () => ReportController(),
    // );
    // Get.lazyPut<DashboardController>(
    //       () => DashboardController(),
    // );
  }
}
