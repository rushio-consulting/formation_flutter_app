// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MovieResponseStore on MovieResponseStoreBase, Store {
  final _$responseAtom = Atom(name: 'MovieResponseStoreBase.response');

  @override
  MoviesResponse get response {
    _$responseAtom.context.enforceReadPolicy(_$responseAtom);
    _$responseAtom.reportObserved();
    return super.response;
  }

  @override
  set response(MoviesResponse value) {
    _$responseAtom.context.conditionallyRunInAction(() {
      super.response = value;
      _$responseAtom.reportChanged();
    }, _$responseAtom, name: '${_$responseAtom.name}_set');
  }

  final _$getTopRatedAsyncAction = AsyncAction('getTopRated');

  @override
  Future<void> getTopRated() {
    return _$getTopRatedAsyncAction.run(() => super.getTopRated());
  }
}
