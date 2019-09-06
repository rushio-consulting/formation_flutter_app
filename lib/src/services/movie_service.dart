import 'package:formation_flutter_app/src/models/movie.dart';

class MovieService {
  Map<String, dynamic> _mockJson() => {
        "page": 1,
        "total_results": 3,
        "total_page": 1,
        "results": [
          {
            "release_date": "1994-09-10",
            "original_title": "The Shawshank Redemption",
          },
          {
            "release_date": "2014-10-10",
            "original_title": "Whiplash",
          },
          {
            "release_date": "1972-03-15",
            "original_title": "The Godfather",
          },
        ]
      };

  ///
  /// Call https://developers.themoviedb.org/3/movies/get-top-rated-movies
  ///
  Future<MoviesResponse> getTopRated() async {
    return MoviesResponse.fromJson(_mockJson());
  }
}
