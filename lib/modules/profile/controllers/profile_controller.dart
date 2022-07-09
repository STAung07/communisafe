import 'package:get/get.dart';
import '/routes/app_pages.dart';

class ProfileController extends GetxController {
  final count = 0.obs;

  final username = "swongts".obs;

  final email = "samsemestreet@gmail.com".obs;

  final address = "Some hillview condo".obs;

  final communityArea = "Zone 3 smth".obs;

  final numReports = 0.obs;

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
