import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/widgets.dart';
import 'package:formation_flutter_app/src/models/news.dart';

class NewsService {
  // TODO Inspiration https://newsapi.org/s/france-news-api
  // News Service with the following category
  // - business
  // - health
  // - technology
  // - science
  Future<NewsResponse> callNewsAPI({@required final category}) async {
    const apiKey = "dd5d1e14cb8849f68a31c2ef5a2789a7";
    final newsAPIUrl =
        'https://newsapi.org/v2/top-headlines?country=fr&category=$category&apiKey=$apiKey';

    // Simple way to make HTTP CALL

    http.Response response = await http.get(newsAPIUrl);
    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      Map asJson = json.decode(response.body);
      return NewsResponse.fromJson(asJson);
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
  }
}
