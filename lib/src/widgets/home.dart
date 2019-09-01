
import 'package:flutter/material.dart';

import 'counter_info.dart';
import 'increment_button.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning App'),
      ),
      body: Center(
        child: CounterInfo(),
      ),
      floatingActionButton: IncrementFloatingActionButton(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}