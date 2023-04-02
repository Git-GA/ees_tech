import 'package:ees_tech/controllers/course.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PartsCard extends GetView<CourseController> {
  final index, title;
  const PartsCard({
    super.key,
    required int this.index,
    required String this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => controller.switchPart(index),
        child: Obx(
          () => Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(colors: [
                  controller.currentPart() == index
                      ? Theme.of(context).colorScheme.secondaryContainer
                      : Theme.of(context).colorScheme.surface,
                  Theme.of(context).colorScheme.surface
                  // Theme.of(context).colorScheme.secondaryContainer
                ])),
            height: 70,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                        borderRadius: BorderRadius.circular(90)),
                    child: Center(
                      child: Text(
                        (index + 1).toString(),
                        style: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .onSecondaryContainer),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(title),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
