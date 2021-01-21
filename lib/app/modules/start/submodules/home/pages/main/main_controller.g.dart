// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $MainController = BindInject(
  (i) => MainController(i<AppService>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainController on _MainControllerBase, Store {
  final _$newsListAtom = Atom(name: '_MainControllerBase.newsList');

  @override
  List<ContentModel> get newsList {
    _$newsListAtom.reportRead();
    return super.newsList;
  }

  @override
  set newsList(List<ContentModel> value) {
    _$newsListAtom.reportWrite(value, super.newsList, () {
      super.newsList = value;
    });
  }

  final _$seriesListAtom = Atom(name: '_MainControllerBase.seriesList');

  @override
  List<ContentModel> get seriesList {
    _$seriesListAtom.reportRead();
    return super.seriesList;
  }

  @override
  set seriesList(List<ContentModel> value) {
    _$seriesListAtom.reportWrite(value, super.seriesList, () {
      super.seriesList = value;
    });
  }

  final _$podCastListAtom = Atom(name: '_MainControllerBase.podCastList');

  @override
  List<ContentModel> get podCastList {
    _$podCastListAtom.reportRead();
    return super.podCastList;
  }

  @override
  set podCastList(List<ContentModel> value) {
    _$podCastListAtom.reportWrite(value, super.podCastList, () {
      super.podCastList = value;
    });
  }

  final _$getHightLightsAsyncAction =
      AsyncAction('_MainControllerBase.getHightLights');

  @override
  Future<void> getHightLights() {
    return _$getHightLightsAsyncAction.run(() => super.getHightLights());
  }

  final _$getSeriesAsyncAction = AsyncAction('_MainControllerBase.getSeries');

  @override
  Future<void> getSeries() {
    return _$getSeriesAsyncAction.run(() => super.getSeries());
  }

  final _$getPodcastsAsyncAction =
      AsyncAction('_MainControllerBase.getPodcasts');

  @override
  Future<void> getPodcasts() {
    return _$getPodcastsAsyncAction.run(() => super.getPodcasts());
  }

  @override
  String toString() {
    return '''
newsList: ${newsList},
seriesList: ${seriesList},
podCastList: ${podCastList}
    ''';
  }
}
