import 'package:ees_tech/controllers/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/courses/course.dart';

class CourseController extends GetxController {
  Course? data;
  RxInt currentPart = 0.obs;
  RxList<int> currentStages = [0].obs;
  late PageController partController;
  RxBool istoolbarExpanded = false.obs;
  RxInt currentCourse = 0.obs;

  Future<bool> getDataFromDB() async {
    // final db = Get.find<MainController>().db;
    // final settings = await db.settings.get(0);
    // final user = await db.users.get(settings.userId);
    // print(user);
    return true;
  }

  void switchPart(index) {
    currentPart(index);

    partController.jumpToPage(index);
  }
}
