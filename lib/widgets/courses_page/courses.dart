import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/course.dart';

class CoursesCard extends GetView<CourseController> {
  final int index;
  final String title;
  const CoursesCard({super.key, required this.index, required this.title});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: index == controller.currentCourse() ? 7 : 1,
            child: InkWell(
              onTap: () {
                controller.currentCourse(index);
              },
              child: Container(
                width: 200,
                height: 220,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(90),
                            child: Image.asset(
                                "assets/img/default_profile_image.png"),
                          ),
                        ),
                        Flexible(
                            flex: 1,
                            child: Text(
                              title,
                              style: Theme.of(context).textTheme.titleMedium,
                            ))
                      ]),
                ),
                // color: Colors.amber,
              ),
            ),
          ),
        ));
  }
}
