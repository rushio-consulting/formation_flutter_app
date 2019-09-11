import 'package:flutter/material.dart';
import 'package:formation_flutter_app/src/models/input_controler.dart';
import 'package:provider/provider.dart';

class SalaryInput extends StatelessWidget {
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
        controller: Provider.of<InputEditingControler>(context, listen: false).salaryController,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Renseigner votre salaire brut annuel';
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: 'Salaire k€/an',
          hintText: 'Salaire brut e.g. 75000',
          labelStyle: Theme.of(context).textTheme.title,
          errorStyle: TextStyle(color: Colors.red, fontSize: 15.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }
}
