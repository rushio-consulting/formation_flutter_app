import 'package:json_annotation/json_annotation.dart';

part 'news.g.dart';

@JsonSerializable()
class NewsResponse {
  final String status;
  final int totalResults;

  @JsonKey(nullable: false, name: 'articles')
  final List<News> news;

  NewsResponse(
    this.status,
    this.totalResults,
    this.news,
  );

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);
}

@JsonSerializable()
class News {
  final NewsSource source;
  final String author;
  final String title;
  final String description;
  final String urlToImage;
  final DateTime publishedAt;

  News(
    this.source,
    this.author,
    this.title,
    this.description,
    this.urlToImage,
    this.publishedAt,
  );

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}

@JsonSerializable()
class NewsSource {
  final String id;
  final String name;

  NewsSource(
    this.id,
    this.name,
  );

  factory NewsSource.fromJson(Map<String, dynamic> json) =>
      _$NewsSourceFromJson(json);
}
