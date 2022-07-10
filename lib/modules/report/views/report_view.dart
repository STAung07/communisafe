import 'package:communiSAFE/modules/report/components/enter_input.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Color(0xffF5F5FF),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: ElevatedButton(
                      onPressed: () => {controller.uploadPhoto()},
                      child: const Icon(Icons.add_a_photo)),
                ),
                ElevatedButton(
                  onPressed: () => {controller.changeTagIndex()},
                  child: Obx(
                    () => Text(
                      controller.tags[controller.tagIndex.value],
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          height: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: EnterInput(
              hint: 'Title',
              iconData: Icon(Icons.search),
              controller: controller.titleTextEditorController,
              obscureText: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: EnterInput(
              hint: 'Description',
              iconData: Icon(Icons.description),
              controller: controller.descriptionTextEditorController,
              obscureText: false,
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              final entrymodel = entryModel(
                title: controller.titleTextEditorController.text.trim(),
                description:
                    controller.descriptionTextEditorController.text.trim(),
                tag: controller.tags[controller.tagIndex.value],
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
