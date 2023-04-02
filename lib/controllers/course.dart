import 'package:ees_tech/controllers/main.dart';
import 'package:ees_tech/widgets/courses_page/parts_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/courses/course.dart';
import '../models/courses/part.dart';

class CourseController extends GetxController {
  Course? data;
  RxInt currentPart = 0.obs;
  RxList<int> currentStages = [0].obs;
  late PageController partController;
  late List<Part> curentParts;
  RxBool istoolbarExpanded = false.obs;
  RxInt currentCourse = 0.obs;
  MainController main = Get.find();
  List courses = [];

  Future<bool> getDataFromDB() async {
    int userId = (await main.settings.get(1)).userId;
    currentCourse((await main.users.get(userId)).activeCourse);
    var course = await main.courses.get(currentCourse());
    var parts = await main.parts.getAll(course.partIds);
    currentPart(course.currentIndex);
    parts.map((el) => currentStages.add(el.currentIndex));

    // await (main.courses.where().findAll());
    // var test = await db.settings.get(1);
    // print(db.settings.getSync(1).dar);

    return true;
  }

  @override
  void onInit() {
    getDataFromDB();
    // TODO: implement onInit
    super.onInit();
  }

  void switchPart(index) {
    currentPart(index);

    partController.jumpToPage(index);
  }
}
