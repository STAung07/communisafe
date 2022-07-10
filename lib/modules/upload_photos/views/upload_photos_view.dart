import 'dart:io';

import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path/path.dart' as p;

import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';

class UploadPhotoView extends StatefulWidget {
  @override
  _UploadPhotoState createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhotoView> {
  String fileType = '';
  late File file;
  String fileName = '';
  String operationText = '';
  bool isUploaded = true;
  String result = '';

  Future<void> _uploadFile(File file, String filename) async {
    var storageReference;
    if (fileType == 'image') {
      storageReference =
          FirebaseStorage.instance.ref().child("images/$filename");
    }
    if (fileType == 'audio') {
      storageReference =
          FirebaseStorage.instance.ref().child("audio/$filename");
    }

    final uploadTask = storageReference.putFile(file);
    final downloadUrl = (await uploadTask.onComplete);
    final String url = (await downloadUrl.ref.getDownloadURL());
    print("URL is $url");
  }

  Future filePicker(BuildContext context) async {
    UploadTask? uploadTask;
    if (fileType == 'image') {
      final pickedFile = await FilePicker.platform.pickFiles();
      setState(() {
        fileName = p.basename(file.path);
      });
      print(fileName);
      _uploadFile(file, fileName);
    }
  }

  void openFile(PlatformFile file) {
    OpenFile.open(file.path!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          child: Text('Pick File'),
          onPressed: () async {
            final result = await FilePicker.platform.pickFiles();
            if (result == null) return;
            final file = result.files.first;
            // Create a reference to the Firebase Storage bucket
            final storageRef = FirebaseStorage.instance.ref();

// Upload file and metadata to the path 'images/mountains.jpg'
// Create the file metadata
            final metadata = SettableMetadata(contentType: "image/jpg");
            final uploadTask = storageRef
                .child("images/try.jpg")
                .putFile(file as File, metadata);

            //openFile(file);
          },
        ),
      ),
    );
  }
}
