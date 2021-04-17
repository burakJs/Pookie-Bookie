// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  final _$pageViewAtom = Atom(name: '_HomeViewModelBase.pageView');

  @override
  int get pageView {
    _$pageViewAtom.reportRead();
    return super.pageView;
  }

  @override
  set pageView(int value) {
    _$pageViewAtom.reportWrite(value, super.pageView, () {
      super.pageView = value;
    });
  }

  final _$_HomeViewModelBaseActionController =
      ActionController(name: '_HomeViewModelBase');

  @override
  void setPageView(int val) {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.setPageView');
    try {
      return super.setPageView(val);
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pageView: ${pageView}
    ''';
  }
}
