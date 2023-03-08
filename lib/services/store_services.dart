import 'package:e_mart_admin/const/const.dart';

class StoreServices {
  static getProfile(uid) {
    return firestore
        .collection(vendorCollection)
        .where('id', isEqualTo: uid)
        .get();
  }
}
