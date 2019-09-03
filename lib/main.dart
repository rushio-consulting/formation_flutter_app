import 'package:flutter/material.dart';

import 'src/providers/stores.dart';
import 'src/widgets/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoresProvider(
      child: MaterialApp(
        title: 'Learning Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
