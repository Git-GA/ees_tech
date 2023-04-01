import 'package:flutter/material.dart';

class FavoritesList extends StatelessWidget {
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
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star),
                    Text('Избранное'),
                  ],
                ),
              ),
              Column(
                children: [
                  favoriteStageTile(
                    context,
                    "Как не сувать пальцы в розеткку",
                    "Из курса техника безопасности",
                  ),
                  favoriteStageTile(
                    context,
                    "Как зовут начальника",
                    "Из курса знакомство с команией",
                  ),
                  favoriteStageTile(
                    context,
                    "Как не грубить коллегам",
                    "Из курса корпоративная этека",
                  ),
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

  favoriteStageTile(BuildContext context, String title, String subTitle) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: Icon(Icons.arrow_right),
      onTap: () {},
    );
  }
}
