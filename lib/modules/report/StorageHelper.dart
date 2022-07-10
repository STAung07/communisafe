import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';

Future<File> getImageFileFromAssets(String path) async {
  final byteData = await rootBundle.load('assets/$path');

  final file = File('${(await getTemporaryDirectory()).path}/$path');
  await file.writeAsBytes(byteData.buffer
      .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

  return file;
}

class StorageHelper {
  static uploadPicture() async {
    final appDocDir = await getApplicationDocumentsDirectory();
    final filePath = "${appDocDir.absolute}/path/to/mountains.jpg";
    // final file = File(filePath);
    File f = await getImageFileFromAssets('mountains.jpg');

// Create the file metadata
    final metadata = SettableMetadata(contentType: "image/jpg");

// Create a reference to the Firebase Storage bucket
    final storageRef = FirebaseStorage.instance.ref();

// Upload file and metadata to the path 'images/mountains.jpg'

    final uploadTask =
        storageRef.child("images/mountains.jpg").putFile(f, metadata);
    // String dataUrl = 'data:text/plain;base64,SGVsbG8sIFdvcmxkIQ==';
    // await storageRef
    //     .child("images/mountains.jpg")
    //     .putString(dataUrl, format: PutStringFormat.dataUrl);

    //final uploadTask =
// Listen for state changes, errors, and completion of the upload.
    // uploadTask.snapshotEvents.listen((TaskSnapshot taskSnapshot) {
    //   switch (taskSnapshot.state) {
    //     case TaskState.running:
    //       final progress =
    //           100.0 * (taskSnapshot.bytesTransferred / taskSnapshot.totalBytes);
    //       print("Upload is $progress% complete.");
    //       break;
    //     case TaskState.paused:
    //       print("Upload is paused.");
    //       break;
    //     case TaskState.canceled:
    //       print("Upload was canceled");
    //       break;
    //     case TaskState.error:
    //       // Handle unsuccessful uploads
    //       break;
    //     case TaskState.success:
    //       // Handle successful uploads on complete
    //       // ...
    //       break;
    //   }
    // });
  }
}
