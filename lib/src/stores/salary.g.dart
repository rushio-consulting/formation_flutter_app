// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Salary on _SalaryBase, Store {
  final _$valueAtom = Atom(name: '_SalaryBase.value');

  @override
  double get value {
    _$valueAtom.context.enforceReadPolicy(_$valueAtom);
    _$valueAtom.reportObserved();
    return super.value;
  }

  @override
  set value(double value) {
    _$valueAtom.context.conditionallyRunInAction(() {
      super.value = value;
      _$valueAtom.reportChanged();
    }, _$valueAtom, name: '${_$valueAtom.name}_set');
  }

  final _$_SalaryBaseActionController = ActionController(name: '_SalaryBase');

  @override
  void worthNet({int salary, int month}) {
    final _$actionInfo = _$_SalaryBaseActionController.startAction();
    try {
      return super.worthNet(salary: salary, month: month);
    } finally {
      _$_SalaryBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset() {
    final _$actionInfo = _$_SalaryBaseActionController.startAction();
    try {
      return super.reset();
    } finally {
      _$_SalaryBaseActionController.endAction(_$actionInfo);
    }
  }
}
