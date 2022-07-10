// import 'package:flutter/material.dart';

// import 'package:get/get.dart';
// import '../controllers/dashboard_controller.dart';

// class DashboardView extends GetView<DashboardController> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Harlo Monke Bonke'),
//       ),
//       body: Container(
//         color: Colors.grey[300],
//         child: ListView.builder(
//           itemBuilder: (context, index) => Card(),
//           itemCount: 12
//         ),
//       ),
//     );
//   }

//   Widget Card() => Container(
//       height: 350.0,
//       margin: const EdgeInsets.all(10.0),
//       color: Colors.white,
//       child: Column(
//           children: <Widget> [
//             ListTile(
//               leading: CircleAvatar(),
//               title: Text("@samsmeestreet"),
//               subtitle: Text("URGENT"),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 20),
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   "LOST MY DOGE",
//                   style: TextStyle(fontSize: 27, color: Color(0xff545454), fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.left,
//                 ),
//               ),
//             ),
//             Expanded(
//                 child: Container(
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: NetworkImage("https://static.wikia.nocookie.net/universe-of-smash-bros-lawl/images/c/cf/Swole_Doge.png/revision/latest?cb=20210421164237"),
//                           fit: BoxFit.cover,
//                         )
//                     )
//                 )
//             )
//           ]
//       )
//   );
// }

//import 'package:communiSAFE/modules/report/FirestoreDBHelper.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

//import '../controllers/report_controller.dart';

class DashboardView extends GetView<EntryController> {
  const DashboardView({Key? key}) : super(key: key);

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
                          _todoModel.title,
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
