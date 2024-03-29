import 'package:flutter/material.dart';
import 'package:formation_flutter_app/src/stores/counter.dart';
import 'package:provider/provider.dart';

class StoresProvider extends StatelessWidget {
  final Widget child;

  StoresProvider({@required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(
          value: Counter(),
        ),
      ],
      child: child,
    );
  }
}