import 'package:flutter/material.dart';
import 'package:formation_flutter_app/src/widgets/salary_calculator.dart';

import 'src/providers/app_provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppProvider(
      child: MaterialApp(
        title: 'Calcul salarial Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Calcul du salaire'),
          ),
          body: SalaryCalculator(),
        ),
      ),
    );
  }
}
