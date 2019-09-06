import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:formation_flutter_app/src/models/movie.dart';
import 'package:formation_flutter_app/src/stores/movie.dart';
import 'package:provider/provider.dart';

class MoviesListWidget extends StatefulWidget {

  @override
  _MoviesListWidgetState createState() => _MoviesListWidgetState();
}

class _MoviesListWidgetState extends State<MoviesListWidget> {
  MovieResponseStore store;

  @override
  void initState() {
    super.initState();
    store = Provider.of<MovieResponseStore>(context, listen: false);
    store.getTopRated();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => ListView.separated(
        padding: const EdgeInsets.all(8.0),
        itemCount: store.response?.movies?.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          Movie movie = store.response.movies[index];
          String originalTitle = movie.originalTitle;
          String releaseDate = movie.releaseDate;

          return Container(
            height: 50,
            child: Center(
              child: Text(
                "$originalTitle - Date : $releaseDate",
                style: TextStyle(height: 3.0),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
    ;
  }
}
