import 'package:flutter/material.dart';
import 'package:formation_flutter_app/src/services/movie_service.dart';
import 'package:provider/provider.dart';

class ServicesProvider extends StatelessWidget {
  final Widget child;

  ServicesProvider({@required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(
          value: MovieService(),
        ),
      ],
      child: child,
    );
  }
}
