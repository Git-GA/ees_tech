import 'package:flutter/material.dart';

class StagesCard extends StatelessWidget {
  final description;
  const StagesCard({super.key, this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            // color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(description),
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '+${1} XP',
                  style: TextStyle(
                      color:
                          Theme.of(context).colorScheme.onSecondaryContainer),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
