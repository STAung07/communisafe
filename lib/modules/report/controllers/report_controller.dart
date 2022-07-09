import 'package:get/get.dart';
import '/routes/app_pages.dart';

class ReportController extends GetxController {
  final count = 0.obs;

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
  void increment() => count.value++;

  // example
  void goFoodLog() {
    Get.toNamed(Routes.FOOD_LOG);
  }
}
