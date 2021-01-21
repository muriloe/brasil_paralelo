// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ContentController = BindInject(
  (i) => ContentController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ContentController on _ContentControllerBase, Store {
  final _$likeAtom = Atom(name: '_ContentControllerBase.like');

  @override
  bool get like {
    _$likeAtom.reportRead();
    return super.like;
  }

  @override
  set like(bool value) {
    _$likeAtom.reportWrite(value, super.like, () {
      super.like = value;
    });
  }

  @override
  String toString() {
    return '''
like: ${like}
    ''';
  }
}
