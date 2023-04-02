import 'package:ees_tech/controllers/home_page.dart';
import 'package:ees_tech/models/personalData/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class AllImportantPeople extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Важные люди"),
      ),
      body: ListView.builder(
        itemCount: controller.important_people.length,
        itemBuilder: (BuildContext context, int index) {
          final user = controller.important_people[index] as User;
          String fullName = user.name!;
          String role = user.role!;
          return personViewTile(context, fullName, role);
        },
      ),
    );
  }

  ListTile personViewTile(BuildContext context, String fullName, String role) {
    return ListTile(
      onTap: () {},
      title: Text(fullName),
      subtitle: Text(role),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(90),
        child: Image.asset("assets/img/default_profile_image.png"),
      ),
    );
  }
}
