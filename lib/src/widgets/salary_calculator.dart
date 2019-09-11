import 'package:flutter/material.dart';
import 'package:formation_flutter_app/src/models/input_controler.dart';
import 'package:formation_flutter_app/src/stores/salary.dart';
import 'package:formation_flutter_app/src/widgets/money_icon.dart';
import 'package:provider/provider.dart';

import 'input/month_input.dart';
import 'input/salary_input.dart';

class SalaryCalculator extends StatefulWidget {
  @override
  _SalaryCalculatorState createState() => _SalaryCalculatorState();
}

// Define a corresponding State class.
// This class holds data related to the form.
class _SalaryCalculatorState extends State<SalaryCalculator> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  InputEditingControler inputEditingControler;
  Salary salary;
  final double _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    salary = Provider.of<Salary>(context, listen: false);
    inputEditingControler =
        Provider.of<InputEditingControler>(context, listen: false);
    TextStyle textStyle = Theme.of(context).textTheme.title;
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.all(_minimumPadding * 2),
        child: ListView(
          children: <Widget>[
            MoneyIcon(),
            SalaryInput(),
            MonthInput(),
            Padding(
              padding: EdgeInsets.only(
                  bottom: _minimumPadding, top: _minimumPadding),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).accentColor,
                      textColor: Theme.of(context).primaryColorDark,
                      child: Text(
                        'Calculer',
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          setState(() {
                            salary.worthNet(
                              salary: int.parse(
                                  inputEditingControler.salaryController.text),
                              month: int.parse(
                                  inputEditingControler.monthController.text),
                            );
                          });
                        }
                      },
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Reset',
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        setState(() {
                          inputEditingControler.salaryController.text = '';
                          inputEditingControler.monthController.text = '';
                          salary.reset();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(_minimumPadding * 2),
              child: Text(
                "Le calcul en net du salaire donne ${salary.value.toString()}",
                style: textStyle,
              ),
            )
          ],
        ),
      ),
    ); // Build this out in the next steps.
  }
}
