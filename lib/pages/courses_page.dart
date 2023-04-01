import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.library_books_outlined),
          title: Text('Test'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              LinearProgressIndicator(
                value: 40 / 52,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Курсов пройдено: 40/52',
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
