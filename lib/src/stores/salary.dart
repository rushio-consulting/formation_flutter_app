import 'package:mobx/mobx.dart';

part 'salary.g.dart';

// This is the class used by rest of your codebase
class Salary = _SalaryBase with _$Salary;

abstract class _SalaryBase with Store {
  ///
  /// Observables represent the reactive-state of your application
  ///
  @observable
  double value = 0;

  ///
  /// Actions are how you mutate the observables
  ///
  @action
  void worthNet({int salary, int month}) {
    value = salary / month;
  }

  @action
  void reset() {
    value = 0;
  }
}
