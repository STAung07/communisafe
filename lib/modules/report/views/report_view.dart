import 'package:communiSAFE/modules/report/components/posts.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../FirestoreDBHelper.dart';
import '../controllers/report_controller.dart';
import '../models/entry.dart';

class ReportView extends GetView<EntryController> {
  @override
  Widget build(BuildContext context) {
    final contentTextEditorController = TextEditingController();
    return Column(children: [
      TextField(
        controller: contentTextEditorController,
      ),
      const SizedBox(
        height: 30,
      ),
      ElevatedButton(
        onPressed: () async {
          final entrymodel = entryModel(
            content: contentTextEditorController.text.trim(),
            isDone: false,
          );
          await FirestoreDb.addEntry(entrymodel);
          contentTextEditorController.clear();
        },
        child: const Text(
          "Add Entry",
        ),
      ),
      const Posts()
    ]);
  }
}
