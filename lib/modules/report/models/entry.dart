import 'package:cloud_firestore/cloud_firestore.dart';

class entryModel {
  String? documentId;
  late String content;
  late Timestamp createdOn;
  late bool isDone;

  entryModel({
    required this.content,
    required this.isDone,
//     required this.createdOn,
  });

  entryModel.fromDocumentSnapshot(
      {required DocumentSnapshot documentSnapshot}) {
    documentId = documentSnapshot.id;
    content = documentSnapshot["content"];
    createdOn = documentSnapshot["createOn"];
    isDone = documentSnapshot["isDone"];
  }
}
