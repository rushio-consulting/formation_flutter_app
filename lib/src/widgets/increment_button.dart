import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:formation_flutter_app/src/stores/counter.dart'; // I

class IncrementFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context,listen: false);
    return FloatingActionButton(
      onPressed: counter.increment,
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}
