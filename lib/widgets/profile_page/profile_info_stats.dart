import 'package:flutter/material.dart';

class ProfileInfoStats extends StatelessWidget {
  const ProfileInfoStats({Key? key}) : super(key: key);

  final List<ProfileInfoItem> _items = const [
    ProfileInfoItem("Пройдено курсов", 900),
    ProfileInfoItem("Достижений", 120),
    ProfileInfoItem("Друзей", 200),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.secondaryContainer,
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text('Ваши достижения'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                height: 80,
                constraints: const BoxConstraints(maxWidth: 400),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: _items
                      .map((item) => Expanded(
                              child: Row(
                            children: [
                              if (_items.indexOf(item) != 0)
                                const VerticalDivider(),
                              Expanded(child: _singleItem(context, item)),
                            ],
                          )))
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _singleItem(BuildContext context, ProfileInfoItem item) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              item.value.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Text(
            item.title,
            style: Theme.of(context).textTheme.caption,
          )
        ],
      );
}

class ProfileInfoItem {
  final String title;
  final int value;
  const ProfileInfoItem(this.title, this.value);
}
