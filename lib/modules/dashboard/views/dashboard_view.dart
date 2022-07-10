import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<EntryController> {
  const DashboardView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Harlo Monke Bonke'),
      ),
      body: Container(
        color: Colors.grey[300],
        child: GetX<EntryController>(
          init: Get.put<EntryController>(EntryController()),
          builder: (EntryController todoController) {
            return Expanded(
              child: ListView.builder(
                itemCount: todoController.entries.length,
                itemBuilder: (BuildContext context, int index) {
                  final _todoModel = todoController.entries[index];
                  return Card(_todoModel, index);
                }
              )
            );
          }
        ),
      ),
    );
  }

  Widget Card(_todoModel, index) => Container(
      height: 400.0,
      margin: const EdgeInsets.all(10.0),
      color: Colors.white,
      child: Column(
          children: <Widget> [
            ListTile(
              leading: CircleAvatar(),
              title: Text("@resident"+_todoModel[index]),
              subtitle: Text(
                _todoModel.tag == "urgent"? "URGENT": _todoModel.tag == "warning"? "WARNING": _todoModel.tag == "help"? "HELP": "INFO",
                style: TextStyle(color: (_todoModel.tag == "urgent")? Colors.red : (_todoModel.tag == "warning")?Colors.yellow : (_todoModel.tag == "help")?Colors.blue: Colors.grey)
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  _todoModel.title,
                  style: TextStyle(fontSize: 27, color: Color(0xff545454), fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),

      
            ),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://static.wikia.nocookie.net/universe-of-smash-bros-lawl/images/c/cf/Swole_Doge.png/revision/latest?cb=20210421164237"),
                        //fit: BoxFit.fill,
                      )
                  )
                )
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    _todoModel.description,
                    //style: TextStyle(fontSize: 27, color: Color(0xff545454), fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ]
      )
  );
}

//import 'package:communiSAFE/modules/report/FirestoreDBHelper.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../controllers/dashboard_controller.dart';

//import '../controllers/report_controller.dart';

// class DashboardView extends GetView<EntryController> {
//   const DashboardView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GetX<EntryController>(
//       init: Get.put<EntryController>(EntryController()),
//       builder: (EntryController todoController) {
//         return Expanded(
//           child: ListView.builder(
//             itemCount: todoController.entries.length,
//             itemBuilder: (BuildContext context, int index) {
//               final _todoModel = todoController.entries[index];
//               return Container(
//                 margin: const EdgeInsets.symmetric(
//                   horizontal: 4,
//                   vertical: 4,
//                 ),
//                 decoration: BoxDecoration(
//                   color: Colors.black26,
//                   borderRadius: BorderRadius.circular(4),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     children: [
//                       Expanded(
//                         child: Text(
//                           _todoModel.title,
//                           style: TextStyle(
//                             fontSize: Get.textTheme.headline6!.fontSize,
//                             decoration: _todoModel.isDone
//                                 ? TextDecoration.lineThrough
//                                 : TextDecoration.none,
//                           ),
//                         ),
//                       ),
//                       // Checkbox(
//                       //   value: _todoModel.isDone,
//                       //   onChanged: (status) {
//                       //     FirestoreDb.updateStatus(
//                       //       status!,
//                       //       _todoModel.documentId,
//                       //     );
//                       //   },
//                       // ),
//                       // IconButton(
//                       //   onPressed: () {
//                       //     FirestoreDb.deleteTodo(
//                       //         _todoModel.documentId!);
//                       //   },
//                       //   icon: const Icon(
//                       //     Icons.delete,
//                       //     color: Colors.redAccent,
//                       //   ),
//                       // ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),
//         );
//       },
//     );
//   }
// }
