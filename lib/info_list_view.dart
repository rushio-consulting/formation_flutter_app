import 'package:flutter/material.dart';
import 'package:formation_flutter_app/src/widgets/news_list.dart';

class InfoListView extends StatefulWidget {
  @override
  _InfoListViewState createState() => _InfoListViewState();
}

class _InfoListViewState extends State<InfoListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('i-Bp Coffee Talk'),
      ),
      body: Center(
        child: Container(
          child: NewsListWidget(),
        ),
      ),
    );
  }
}
