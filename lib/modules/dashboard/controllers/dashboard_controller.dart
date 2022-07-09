import 'package:get/get.dart';
import '/routes/app_pages.dart';

class DashboardController extends GetxController {
  final count = 0.obs;
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }

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
