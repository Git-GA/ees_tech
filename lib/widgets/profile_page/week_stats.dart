import 'package:flutter/material.dart';

class WeekStats extends StatelessWidget {
  const WeekStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        //height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.secondaryContainer,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text('Ваши достижения за неделю'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(Icons.add_circle),
                      SizedBox(height: 20),
                      Text("ПН"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.remove_circle),
                      SizedBox(height: 20),
                      Text("ВТ"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.add_circle),
                      SizedBox(height: 20),
                      Text("СР"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.add_circle),
                      SizedBox(height: 20),
                      Text("ЧТ"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.remove_circle),
                      SizedBox(height: 20),
                      Text("ПТ"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.remove_circle),
                      SizedBox(height: 20),
                      Text("СБ"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.remove_circle),
                      SizedBox(height: 20),
                      Text("ВС"),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "25",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                        "Текущий стрик",
                        style: Theme.of(context).textTheme.caption,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "25",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                        "Лучший стрик",
                        style: Theme.of(context).textTheme.caption,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
