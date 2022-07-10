import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../../FirestoreDBHelper.dart';
import '../../models/entry.dart';

class ReportController extends GetxController {
  final titleTextEditorController = TextEditingController();

  final descriptionTextEditorController = TextEditingController();

  final tags = ['urgent', 'warning', 'help', 'info'];

  final tagIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void changeTagIndex() {
    if (tagIndex.value == 3) {
      tagIndex.value = 0;
    } else {
      tagIndex.value += 1;
    }
  }

  void uploadPhoto() {
    Get.toNamed(Routes.UPLOAD_PHOTO);
  }
}
