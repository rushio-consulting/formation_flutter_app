import 'package:mobx/mobx.dart';

// Include generated file
part 'counter.g.dart';

// This is the class used by rest of your codebase
class Counter = _CounterBase with _$Counter;


// The store-class
///
/// store-classes  are abstract and use the Store mixin.
/// When you run the build_runner,
/// it will automatically generate the *.g.dart file
/// that must be imported in your file.
///
abstract class _CounterBase with Store {

  ///
  /// Observables represent the reactive-state of your application
  ///
  @observable
  int value = 0;

  ///
  /// Actions are how you mutate the observables
  ///
  @action
  void increment() {
    value++;
  }
}