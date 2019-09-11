import 'package:flutter/material.dart';
import 'package:formation_flutter_app/src/models/input_controler.dart';
import 'package:formation_flutter_app/src/stores/salary.dart';
import 'package:provider/provider.dart';

class AppProvider extends StatelessWidget {
  final Widget child;

  AppProvider({@required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(
          value: InputEditingControler(),
        ),
        Provider.value(
          value: Salary(),
        ),
      ],
      child: child,
    );
  }
}
