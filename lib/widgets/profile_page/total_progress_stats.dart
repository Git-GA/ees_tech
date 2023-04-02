import 'package:ees_tech/controllers/course.dart';
import 'package:ees_tech/controllers/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TotalProgressStats extends StatelessWidget {
  const TotalProgressStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        child: Container(
          //height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // color: Theme.of(context).colorScheme.secondaryContainer,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text('Ваши достижения по курсам'),
                ),
              ),
              Column(
                children: [
                  courseStatasTile(
                      context: context,
                      imgSrc: "assets/img/default_course_image.png",
                      courseName: "Знакомство с команией",
                      courseStatus: "В процессе",
                      progressValue: 0.5),
                  const Divider(),
                  courseStatasTile(
                      context: context,
                      imgSrc: "assets/img/default_course_image.png",
                      courseName: "Техника безопасности",
                      courseStatus: "В процессе",
                      progressValue: 0.8),
                  const Divider(),
                  courseStatasTile(
                      context: context,
                      imgSrc: "assets/img/default_course_image.png",
                      courseName: "Корпоративная этика",
                      courseStatus: "В процессе",
                      progressValue: 0.2),
                  const Divider(),
                  ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    title: Center(child: const Text("Показать все")),
                    onTap: () {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class courseStatasTile extends GetView<CourseController> {
  const courseStatasTile({
    super.key,
    required this.context,
    required this.imgSrc,
    required this.courseName,
    required this.courseStatus,
    required this.progressValue,
  });

  final BuildContext context;
  final String imgSrc;
  final String courseName;
  final String courseStatus;
  final double progressValue;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // onTap: () {},
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(90),
        child: Image.asset(imgSrc),
      ),
      title: Text(courseName),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              courseStatus,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: LinearProgressIndicator(
              value: progressValue,
            ),
          ),
        ],
      ),
    );
  }
}
