import 'package:flutter/material.dart';
import 'package:formation_flutter_app/src/services/news_service.dart';
import 'package:formation_flutter_app/src/stores/news_store.dart';
import 'package:provider/provider.dart';

class StoresProvider extends StatelessWidget {
  final Widget child;

  const StoresProvider({@required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: <SingleChildCloneableWidget>[
        Provider.value(
          value: NewsService(),
        ),
        ProxyProvider<NewsService, NewsStore>(
          builder: (c, service, previousStore) =>
              previousStore ?? NewsStore(service),
        ),
      ],
      child: child,
    );
  }
}
