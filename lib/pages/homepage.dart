import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Scaffold(
          appBar: AppBar(
            title: Text(
              'test',
            ),
            backgroundColor: Colors.blue,
          ),
        ));
  }
}
