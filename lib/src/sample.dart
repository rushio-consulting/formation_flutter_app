import 'package:formation_flutter_app/src/models/news.dart';
import 'package:formation_flutter_app/src/services/news_service.dart';

main(List<String> args) async {
  final service = NewsService();
  NewsResponse response = await service.callNewsAPI(category: 'business');
  print('Number of response  ${response.totalResults}');
}
