import 'package:flutter/material.dart';

class ImportantPeople extends StatelessWidget {
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
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person),
                    Text('Важные люди'),
                  ],
                ),
              ),
              Column(
                children: [
                  personViewTile(context, "Иван Иванович Иванов",
                      "Отдел программной разработки"),
                  personViewTile(
                    context,
                    "Петр Петровович Петров",
                    "Отдел маркетинга",
                  ),
                  personViewTile(
                    context,
                    "Кирилл Котсянов Костянин",
                    "SMM",
                  ),
                  ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    title: Center(child: const Text("Показать всех")),
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
