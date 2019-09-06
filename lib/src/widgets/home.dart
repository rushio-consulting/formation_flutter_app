
import 'package:flutter/material.dart';
import 'package:formation_flutter_app/src/widgets/movies_list.dart';

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
    );
  }
}