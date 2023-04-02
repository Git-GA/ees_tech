import 'package:ees_tech/controllers/home_page.dart';
import 'package:ees_tech/models/courses/stage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class AllFavorites extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Избранные статьи"),
      ),
      body: ListView.builder(
        itemCount: controller.favorites_list.length,
        itemBuilder: (BuildContext context, int index) {
          final stage = controller.favorites_list[index] as Stage;
          String title = stage.title!;
          String description = stage.description!;
          return favoriteStageTile(context, title, description);
        },
      ),
    );
  }

  ListTile favoriteStageTile(
      BuildContext context, String title, String subTitle) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: Icon(Icons.arrow_right),
      onTap: () {},
    );
  }
}
