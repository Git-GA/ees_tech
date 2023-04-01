import 'package:ees_tech/widgets/home_page/all_courses_list.dart';
import 'package:ees_tech/widgets/home_page/favorites%20_list.dart';
import 'package:ees_tech/widgets/home_page/important_people.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home_outlined),
        title: Text('Главная'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              FavoritesList(),
              ImportantPeople(),
              AllCoursesList(),
            ],
          ),
        ),
      ),
    );
  }
}
