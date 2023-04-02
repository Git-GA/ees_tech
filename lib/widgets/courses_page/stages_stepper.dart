import 'package:ees_tech/controllers/course.dart';
import 'package:ees_tech/widgets/courses_page/stages_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class StagesStepper extends GetView<CourseController> {
  final int index;
  const StagesStepper({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Stepper(
          // physics: (),
          controlsBuilder: (context, details) => Container(),
          onStepTapped: (value) => controller.changeState(index, value),
          currentStep: controller.currentStages[index],
          steps: List<Step>.generate(
            5,
            (index) => Step(
              title: Text('Header of ${index} step'),
              content: StagesCard(description: 'Description of ${index} step'),
            ),
          ),
        ));
  }
}
