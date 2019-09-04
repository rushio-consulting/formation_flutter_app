import 'package:flutter/material.dart';
import 'package:formation_flutter_app/src/providers/services.dart';

import 'src/providers/stores.dart';
import 'src/widgets/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ServicesProvider(
      child: StoresProvider(
        child: MaterialApp(
          title: 'Learning Flutter: MovieDB',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(),
        ),
      ),
    );
  }
}
