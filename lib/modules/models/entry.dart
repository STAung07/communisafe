import 'package:cloud_firestore/cloud_firestore.dart';

class entryModel {
  String? documentId;
  late String title;
  late String description;
  late String tag;
  late Timestamp createdOn;
  late bool isDone;

  entryModel({
    required this.title,
    required this.description,
    required this.tag,
    required this.isDone,
//     required this.createdOn,
  });

  entryModel.fromDocumentSnapshot(
      {required DocumentSnapshot documentSnapshot}) {
    documentId = documentSnapshot.id;
    title = documentSnapshot["title"];
    description = documentSnapshot["description"];
    tag = documentSnapshot["tag"];
    createdOn = documentSnapshot["createdOn"];
    isDone = documentSnapshot["isDone"];
  }
}
