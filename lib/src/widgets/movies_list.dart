import 'package:flutter/material.dart';
import 'package:formation_flutter_app/src/models/movie.dart';
import 'package:formation_flutter_app/src/services/movie_service.dart';
import 'package:formation_flutter_app/src/stores/movie.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

class MoviesListWidget extends StatefulWidget {

  final MovieResponseStore store;
  MoviesListWidget(this.store, {Key key}) : super(key: key);

  @override
  _MoviesListWidgetState createState() => _MoviesListWidgetState();
}

class _MoviesListWidgetState extends State<MoviesListWidget> {

  @override
  void initState() {
    super.initState();
    widget.store.getTopRated();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8.0),
      itemCount: widget.store.response?.movies?.length ?? 0,
      itemBuilder: (BuildContext context, int index) {
        Movie movie = widget.store.response.movies[index];
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
    );
  }
}
