import 'package:ees_tech/controllers/course.dart';
import 'package:ees_tech/main.dart';
import 'package:ees_tech/models/courses/course.dart';
import 'package:ees_tech/models/personalData/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';

import '../../widgets/courses_page/courses.dart';
import '../../widgets/courses_page/parts_card.dart';
import '../../widgets/courses_page/stages_stepper.dart';

class CoursesPage extends GetView<CourseController> {
  const CoursesPage({super.key});

  @override
  build(BuildContext context) {
    controller.partController =
        PageController(initialPage: controller.currentPart());
    return Obx(() => Scaffold(
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(controller.istoolbarExpanded() ? 300 : 50),
            child: InkResponse(
                onTap: () {
                  controller.istoolbarExpanded.toggle();
                },
                child: AppBar(
                  leading: Icon(Icons.library_books_outlined),
                  title: Container(child: Text('Test ^')),
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(
                        controller.istoolbarExpanded() ? 300 : 0),
                    child: controller.istoolbarExpanded()
                        ? SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children: List.from(
                              controller.courses.map((e) =>
                                  CoursesCard(index: e.id, title: e.title)),
                            )),
                          )
                        : Container(),
                  ),
                ))),
        floatingActionButton:
            FloatingActionButton(child: Icon(Icons.search), onPressed: () {}),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              LinearProgressIndicator(
                value: 40 / 52,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Пройдено: 40/52',
                  ),
                ],
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.from(),
                ),
              ),
              Expanded(
                child: PageView(
                  clipBehavior: Clip.antiAlias,
                  onPageChanged: (value) => controller.currentPart(value),
                  controller: controller.partController,
                  children: List.generate(5, (index) {
                    controller.currentStages.add(0);
                    return StagesStepper(index: index);
                  }),
                ),
              ),
            ],
          ),
        )));
  }
}
