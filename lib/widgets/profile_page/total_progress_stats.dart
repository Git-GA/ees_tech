import 'package:flutter/material.dart';

class TotalProgressStats extends StatelessWidget {
  const TotalProgressStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
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
                courseStatsTile(context, "assets/img/default_course_image.png",
                    "Знакомство с команией", "В процессе", 0.5),
                const Divider(),
                courseStatsTile(context, "assets/img/default_course_image.png",
                    "Техника безопасности", "В процессе", 0.8),
                const Divider(),
                courseStatsTile(context, "assets/img/default_course_image.png",
                    "Корпоративная этика", "В процессе", 0.2),
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
    );
  }

  Padding courseStatsTile(BuildContext context, String imgSrc,
      String courseName, String courseStatus, double progressValue) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(90),
              child: Image.asset(imgSrc),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(courseName),
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
            ),
          )
        ],
      ),
    );
  }
}
