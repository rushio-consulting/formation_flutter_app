import 'package:flutter/material.dart';

class MoneyIcon extends StatelessWidget {
  final double _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: AssetImage('images/money.png'),
        width: 125.0,
        height: 125.0,
      ),
      margin: EdgeInsets.all(_minimumPadding * 10),
    );
  }
}
