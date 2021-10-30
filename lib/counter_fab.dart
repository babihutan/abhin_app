import 'package:flutter/material.dart';

class CounterFab extends StatelessWidget {
  final Function incrementCounter;
  const CounterFab(this.incrementCounter, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        incrementCounter();
      },
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
