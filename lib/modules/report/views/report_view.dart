import 'package:communiSAFE/modules/report/components/enter_input.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/report_controller.dart';

class ReportView extends GetView<ReportController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
        child: Container(
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              EnterInput(
                  hint: 'Enter',
                  controller: controller.textController,
                  obscureText: false),
            ],
          ),
        ),
      ),
    );
  }
}
