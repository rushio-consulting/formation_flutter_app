import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:formation_flutter_app/src/stores/news_store.dart';
import 'package:provider/provider.dart';

class NewsListWidget extends StatefulWidget {
  @override
  _NewsListWidgetState createState() => _NewsListWidgetState();
}

class _NewsListWidgetState extends State<NewsListWidget> {
  NewsStore store;

  @override
  void initState() {
    store = Provider.of<NewsStore>(context, listen: false);
    store.getNewsBusiness();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => ListView.separated(
        padding: const EdgeInsets.all(8.0),
        itemCount: store.response?.news?.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          final news = store.response.news[index];

          return Container(
            height: 50,
            child: Center(
              child: Text(
                "Source : ${news.source?.name} - Titre : ${news.title} - Author: ${news.author}",
                style: TextStyle(height: 3.0),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
