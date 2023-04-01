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
                padding: EdgeInsets.all(10.0),
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

  Padding courseTile(BuildContext context, String imgSrc, String courseName,
      String shortDescription) {
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
                      shortDescription,
                      style: Theme.of(context).textTheme.bodySmall,
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
