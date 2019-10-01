// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsResponse _$NewsResponseFromJson(Map<String, dynamic> json) {
  return NewsResponse(
    json['status'] as String,
    json['totalResults'] as int,
    (json['articles'] as List)
        .map((e) => News.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$NewsResponseToJson(NewsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.news,
    };

News _$NewsFromJson(Map<String, dynamic> json) {
  return News(
    json['source'] == null
        ? null
        : NewsSource.fromJson(json['source'] as Map<String, dynamic>),
    json['author'] as String,
    json['title'] as String,
    json['description'] as String,
    json['urlToImage'] as String,
    json['publishedAt'] == null
        ? null
        : DateTime.parse(json['publishedAt'] as String),
  );
}

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'source': instance.source,
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'urlToImage': instance.urlToImage,
      'publishedAt': instance.publishedAt?.toIso8601String(),
    };

NewsSource _$NewsSourceFromJson(Map<String, dynamic> json) {
  return NewsSource(
    json['id'] as String,
    json['name'] as String,
  );
}

Map<String, dynamic> _$NewsSourceToJson(NewsSource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
