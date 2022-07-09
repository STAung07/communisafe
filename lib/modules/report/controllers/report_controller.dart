import 'package:get/get.dart';
import '/routes/app_pages.dart';

class ReportController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  // example
  void goFoodLog() {
    Get.toNamed(Routes.FOOD_LOG);
  }
}