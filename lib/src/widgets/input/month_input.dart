import 'package:flutter/material.dart';
import 'package:formation_flutter_app/src/models/input_controler.dart';
import 'package:provider/provider.dart';

class MonthInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final double _minimumPadding = 5.0;
    
    return Padding(
      padding: EdgeInsets.only(
        top: _minimumPadding,
        bottom: _minimumPadding,
      ),
      child: TextFormField(
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.title,
         controller: Provider.of<InputEditingControler>(context, listen: false).monthController,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Renseigner le nombre de mois travaillés';
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: 'Nombre de mois /an',
          hintText: 'Nombre de mois e.g. 12',
          labelStyle: Theme.of(context).textTheme.title,
          errorStyle: TextStyle(color: Colors.red, fontSize: 15.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );;
  }
}