import 'package:communiSAFE/modules/report/components/enter_input.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../FirestoreDBHelper.dart';
import '../controllers/report_controller.dart';
import '../../models/entry.dart';

class ReportView extends GetView<ReportController> {
  @override
  Widget build(BuildContext context) {
    //final contentTextEditorController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.add_a_photo),
              ElevatedButton(
                onPressed: () => {controller.setTag.value = controller.tags[0]},
                child: Obx(
                  () => Text(controller.setTag.value),
                ),
              ),
            ],
          ),
          EnterInput(
            hint: 'Title',
            controller: controller.titleTextEditorController,
            obscureText: false,
          ),
          EnterInput(
            hint: 'Description',
            controller: controller.descriptionTextEditorController,
            obscureText: false,
          ),
          ElevatedButton(
            onPressed: () async {
              final entrymodel = entryModel(
                title: controller.titleTextEditorController.text.trim(),
                description:
                    controller.descriptionTextEditorController.text.trim(),
                tag: controller.setTag.value,
                isDone: false,
              );
              await FirestoreDb.addEntry(entrymodel);
              controller.titleTextEditorController.clear();
              controller.descriptionTextEditorController.clear();
            },
            child: const Text(
              "Report",
            ),
          ),
        ],
      ),
    );
  }
}
