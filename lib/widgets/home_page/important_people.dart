import 'package:ees_tech/controllers/home_page.dart';
import 'package:ees_tech/models/personalData/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImportantPeople extends GetView<HomePageController> {
  const ImportantPeople({super.key});

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
                    Icon(Icons.person),
                    Text('Важные люди'),
                  ],
                ),
              ),
              Obx(
                () => Column(
                  children: List.generate(
                        controller.important_people.length,
                        (index) {
                          final user =
                              controller.important_people[index] as User;
                          String fullName = user.name!;
                          String role = user.role!;
                          return personViewTile(context, fullName, role);
                        },
                      ) +
                      [
                        ListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          title: const Center(child: Text("Показать всех")),
                          onTap: () {},
                        )
                      ],
                ),
              ),
              //   children: controller.important_people.map(
              //     (person) => personViewTile(context, "Иван Иванович Иванов",
              //         "Отдел программной разработки"),
              //   ),
              // )
            ],
          ),
        ),
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
