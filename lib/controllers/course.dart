import 'package:ees_tech/controllers/main.dart';
import 'package:get/get.dart';

import '../models/courses/course.dart';

class CourseController extends GetxController {
  Course? data;
  Future<bool> getDataFromDB() async {
    final db = Get.find<MainController>().db;
    final settings = await db.settings.get(0);
    final user = await db.users.get(settings.userId);
    print(user);
    return true;
  }
}
