import 'package:formation_flutter_app/src/models/news.dart';
import 'package:formation_flutter_app/src/services/news_service.dart';
import 'package:mobx/mobx.dart';

part 'news_store.g.dart';

class NewsStore = NewsStoreBase with _$NewsStore;

abstract class NewsStoreBase with Store {
  final NewsService _service;

  @observable
  NewsResponse response;

  NewsStoreBase(this._service);

  @action
  Future<void> getNewsBusiness() async =>
      response = await _service.callNewsAPI(category: 'business');

  @action
  Future<void> getNewsScience() async =>
      response = await _service.callNewsAPI(category: 'science');

  @action
  Future<void> getNewsTechnology() async =>
      response = await _service.callNewsAPI(category: 'technology');

  @action
  Future<void> getNewsHealth() async =>
      response = await _service.callNewsAPI(category: 'health');
}
