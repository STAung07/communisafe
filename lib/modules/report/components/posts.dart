import 'package:communiSAFE/modules/report/FirestoreDBHelper.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/report_controller.dart';

class Posts extends GetView<EntryController> {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<EntryController>(
      init: Get.put<EntryController>(EntryController()),
      builder: (EntryController todoController) {
        return Expanded(
          child: ListView.builder(
            itemCount: todoController.entries.length,
            itemBuilder: (BuildContext context, int index) {
              final _todoModel = todoController.entries[index];
              return Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          _todoModel.content,
                          style: TextStyle(
                            fontSize: Get.textTheme.headline6!.fontSize,
                            decoration: _todoModel.isDone
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                          ),
                        ),
                      ),
                      // Checkbox(
                      //   value: _todoModel.isDone,
                      //   onChanged: (status) {
                      //     FirestoreDb.updateStatus(
                      //       status!,
                      //       _todoModel.documentId,
                      //     );
                      //   },
                      // ),
                      // IconButton(
                      //   onPressed: () {
                      //     FirestoreDb.deleteTodo(
                      //         _todoModel.documentId!);
                      //   },
                      //   icon: const Icon(
                      //     Icons.delete,
                      //     color: Colors.redAccent,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
