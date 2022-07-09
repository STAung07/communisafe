import 'package:get/get.dart';
import '../FirestoreDBHelper.dart';
import '../models/entry.dart';

class EntryController extends GetxController {
  Rx<List<entryModel>> entryList = Rx<List<entryModel>>([]);
  List<entryModel> get entries => entryList.value;

  @override
  void onReady() {
    entryList.bindStream(FirestoreDb.entryStream());
  }
}
