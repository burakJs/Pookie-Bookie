// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$QuestionViewModel on _QuestionViewModelBase, Store {
  final _$controllerAtom = Atom(name: '_QuestionViewModelBase.controller');

  @override
  PageController get controller {
    _$controllerAtom.reportRead();
    return super.controller;
  }

  @override
  set controller(PageController value) {
    _$controllerAtom.reportWrite(value, super.controller, () {
      super.controller = value;
    });
  }

  final _$pageViewControllerAtom =
      Atom(name: '_QuestionViewModelBase.pageViewController');

  @override
  int get pageViewController {
    _$pageViewControllerAtom.reportRead();
    return super.pageViewController;
  }

  @override
  set pageViewController(int value) {
    _$pageViewControllerAtom.reportWrite(value, super.pageViewController, () {
      super.pageViewController = value;
    });
  }

  final _$changePageViewAsyncAction =
      AsyncAction('_QuestionViewModelBase.changePageView');

  @override
  Future<void> changePageView() {
    return _$changePageViewAsyncAction.run(() => super.changePageView());
  }

  @override
  String toString() {
    return '''
controller: ${controller},
pageViewController: ${pageViewController}
    ''';
  }
}
