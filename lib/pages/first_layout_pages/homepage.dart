import 'package:ees_tech/i18n/en_US/strings.g.dart';
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
        leading: const Icon(Icons.home_outlined),
        title: Text(t.navbar.homepage),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FavoritesList(),
            ImportantPeople(),
            AllCoursesList(),
          ],
        ),
      ),
    );
  }
}
