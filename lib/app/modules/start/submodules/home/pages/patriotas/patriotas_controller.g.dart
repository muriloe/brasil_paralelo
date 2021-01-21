// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patriotas_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $PatriotasController = BindInject(
  (i) => PatriotasController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PatriotasController on _PatriotasControllerBase, Store {
  final _$valueAtom = Atom(name: '_PatriotasControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_PatriotasControllerBaseActionController =
      ActionController(name: '_PatriotasControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_PatriotasControllerBaseActionController.startAction(
        name: '_PatriotasControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_PatriotasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
