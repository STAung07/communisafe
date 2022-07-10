import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:communiSAFE/constants/firebase_auth_constants.dart';

import 'models/entry.dart';

class FirestoreDb {
  static addEntry(entryModel entrymodel) async {
    await firebaseFirestore
        .collection('users')
        .doc(auth.currentUser!.uid)
        .collection('entries')
        .add({
      'title': entrymodel.title,
      'description': entrymodel.description,
      'tag': entrymodel.tag,
      'createdOn': Timestamp.now(),
      'isDone': false,
    });
  }

  static Stream<List<entryModel>> entryStream() {
    return firebaseFirestore
        .collection('users')
        .doc(auth.currentUser!.uid)
        .collection('entries')
        .snapshots()
        .map((QuerySnapshot query) {
      List<entryModel> entries = [];

      print(query.docs[0]);
      for (var entry in query.docs) {
        final entrymodel =
            entryModel.fromDocumentSnapshot(documentSnapshot: entry);
        entries.add(entrymodel);
      }
      // final entrymodel =
      //     entryModel.fromDocumentSnapshot(documentSnapshot: query.docs[0]);
      // entries.add(entrymodel);
      return entries;
    });
  }

  // static updateStatus(bool isDone, documentId) {
  //   firebaseFirestore
  //       .collection('users')
  //       .doc(auth.currentUser!.uid)
  //       .collection('todos')
  //       .doc(documentId)
  //       .update(
  //     {
  //       'isDone': isDone,
  //     },
  //   );
  // }
  // static deleteTodo(String documentId) {
  //   firebaseFirestore
  //       .collection('users')
  //       .doc(auth.currentUser!.uid)
  //       .collection('todos')
  //       .doc(documentId)
  //       .delete();
  // }
}
