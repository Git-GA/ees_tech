import 'package:ees_tech/controllers/main.dart';
import 'package:ees_tech/models/courses/part.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';

import '../models/courses/course.dart';

class CourseController extends GetxController {
  Course? course;
  RxInt currentPart = 0.obs;
  RxList<int> currentStages = [0].obs;
  late PageController partController;
  late var parts;
  RxBool istoolbarExpanded = false.obs;
  RxInt currentCourse = 0.obs;
  MainController main = Get.find();
  List courses = [];

  Future<void> changeState(index, value) async {
    currentStages[index] = value;

    parts[index].currentIndex = value;
    // await isar.writeTxn(() async {
    //   main.parts.put(parts[index]);
    // });
  }

  Future<bool> getDataFromDB() async {
    int userId = (await main.settings.get(1)).userId;
    currentCourse((await main.users.get(userId)).activeCourse);
    course = await main.courses.get(currentCourse());
    parts = await main.parts.getAll(course?.partIds);
    currentPart(course?.currentIndex);
    List.from(parts.map((el) {
      currentStages.add(el.currentIndex);
    }));

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
