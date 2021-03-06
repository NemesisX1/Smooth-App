import 'package:hive/hive.dart';
import 'package:smooth/services/base.service.dart';
import '../../models/appuser.model.dart';

/// [LocalService]
/// A base class to interact with local storage with Hive
class LocalService extends BaseService {
  saveUser(AppUser user) async {
    try {
      await Hive.openBox<AppUser>("user");
    } catch (e) {
      print(e);
    }
    Box<AppUser> box = Hive.box('user');
    if (box.isNotEmpty) {
      await box.putAt(0, user);
    } else {
      await box.add(user);
    }
  }

  AppUser? readAppUser() {
    try {
      Hive.openBox<AppUser>("user");
    } catch (e) {
      print(e);
    }
    Box<AppUser> box = Hive.box('user');
    AppUser? user = box.get(0);
    return user;
  }

  void deleteBoxes() {
    Box<AppUser> box = Hive.box('user');
    box.deleteFromDisk();
  }
}
