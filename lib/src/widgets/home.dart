
import 'package:flutter/material.dart';
import 'package:formation_flutter_app/src/widgets/movies_list.dart';

import 'counter_info.dart';
import 'increment_button.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning Flutter: MovieDB'),
      ),
      body: Center(
        child: MoviesListWidget(),
      ),
     // floatingActionButton: IncrementFloatingActionButton(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}