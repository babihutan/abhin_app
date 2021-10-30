import 'package:flutter/material.dart';
import 'abhin_data.dart';
import 'counter_fab.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  final AbhinData abhinData;
  const MyHomePage(this.abhinData, {Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder<int>(
              stream: abhinData.counter,
              builder: (context, counterSnapshot) {
                return Text(
                  '${counterSnapshot.hasData ? counterSnapshot.data : "no idea"}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: CounterFab(abhinData.increment),
    );
  }
}
