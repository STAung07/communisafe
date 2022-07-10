import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../FirestoreDBHelper.dart';
import '../../models/entry.dart';

class ReportController extends GetxController {
  final titleTextEditorController = TextEditingController();

  final descriptionTextEditorController = TextEditingController();

  final tags = ['urgent', 'warning', 'help', 'info'];

  final setTag = "".obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }
}
