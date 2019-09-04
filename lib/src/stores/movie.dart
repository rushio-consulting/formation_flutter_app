import 'package:mobx/mobx.dart';

import '../models/movie.dart';
import '../services/movie_service.dart';
part 'movie.g.dart';

class MovieResponseStore = MovieResponseStoreBase with _$MovieResponseStore;

abstract class MovieResponseStoreBase with Store {
  final MovieService _service;

  @observable
  MoviesResponse response;

  MovieResponseStoreBase(this._service);

  @action
  Future<void> getTopRated() async {
    response = await _service.getTopRated();
  }
}
