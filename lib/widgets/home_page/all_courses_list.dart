import 'package:flutter/material.dart';

class AllCoursesList extends StatelessWidget {
  const AllCoursesList({super.key});

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
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.library_books_outlined),
                      Text('Все курсы'),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  courseTile(context, "assets/img/default_course_image.png",
                      "Знакомство с команией", "В процессе"),
                  courseTile(context, "assets/img/default_course_image.png",
                      "Техника безопасности", "В процессе"),
                  courseTile(context, "assets/img/default_course_image.png",
                      "Корпаративная этика", "В процессе"),
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

  ListTile courseTile(
    BuildContext context,
    String imgSrc,
    String courseName,
    String shortDescription,
  ) {
    return ListTile(
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onTap: () {},
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(90),
        child: Image.asset(imgSrc),
      ),
      title: Text(courseName),
      subtitle: Text(shortDescription),
      trailing: Icon(Icons.arrow_right),
    );
  }
}
