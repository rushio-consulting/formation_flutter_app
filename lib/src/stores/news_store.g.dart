// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewsStore on NewsStoreBase, Store {
  final _$responseAtom = Atom(name: 'NewsStoreBase.response');

  @override
  NewsResponse get response {
    _$responseAtom.context.enforceReadPolicy(_$responseAtom);
    _$responseAtom.reportObserved();
    return super.response;
  }

  @override
  set response(NewsResponse value) {
    _$responseAtom.context.conditionallyRunInAction(() {
      super.response = value;
      _$responseAtom.reportChanged();
    }, _$responseAtom, name: '${_$responseAtom.name}_set');
  }

  final _$getNewsBusinessAsyncAction = AsyncAction('getNewsBusiness');

  @override
  Future<void> getNewsBusiness() {
    return _$getNewsBusinessAsyncAction.run(() => super.getNewsBusiness());
  }

  final _$getNewsScienceAsyncAction = AsyncAction('getNewsScience');

  @override
  Future<void> getNewsScience() {
    return _$getNewsScienceAsyncAction.run(() => super.getNewsScience());
  }

  final _$getNewsTechnologyAsyncAction = AsyncAction('getNewsTechnology');

  @override
  Future<void> getNewsTechnology() {
    return _$getNewsTechnologyAsyncAction.run(() => super.getNewsTechnology());
  }

  final _$getNewsHealthAsyncAction = AsyncAction('getNewsHealth');

  @override
  Future<void> getNewsHealth() {
    return _$getNewsHealthAsyncAction.run(() => super.getNewsHealth());
  }
}
