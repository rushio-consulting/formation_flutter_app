import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:formation_flutter_app/src/stores/counter.dart'; // Import the Counter

class CounterInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context,listen: false);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'You have pushed the button this many times:',
        ),
        // Wrapping in the Observer will automatically re-render on changes to counter.value
        Observer(
          builder: (_) => Text(
            '${counter.value}',
            style: Theme.of(context).textTheme.display1,
          ),
        )
      ],
    );
  }
}
