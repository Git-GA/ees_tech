import 'package:ees_tech/controllers/home_page.dart';
import 'package:ees_tech/models/courses/stage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class FavoritesList extends GetView<HomePageController> {
  const FavoritesList({super.key});

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
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star),
                    Text('Избранное'),
                  ],
                ),
              ),
              Column(
                children: List.generate(
                      controller.favorites_list.length > 3
                          ? 3
                          : controller.favorites_list.length,
                      (index) {
                        final stage = controller.favorites_list[index] as Stage;
                        String title = stage.title!;
                        String description = stage.description!;
                        return favoriteStageTile(context, title, description);
                      },
                    ) +
                    [
                      ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        title: const Center(child: Text("Показать все")),
                        onTap: () {
                          context.push("/home/allFavorites");
                        },
                      )
                    ],
              )
            ],
          ),
        ),
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
