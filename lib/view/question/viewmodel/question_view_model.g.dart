// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$QuestionViewModel on _QuestionViewModelBase, Store {
  final _$trueAnswerCountAtom =
      Atom(name: '_QuestionViewModelBase.trueAnswerCount');

  @override
  int get trueAnswerCount {
    _$trueAnswerCountAtom.reportRead();
    return super.trueAnswerCount;
  }

  @override
  set trueAnswerCount(int value) {
    _$trueAnswerCountAtom.reportWrite(value, super.trueAnswerCount, () {
      super.trueAnswerCount = value;
    });
  }

  final _$isTrueAtom = Atom(name: '_QuestionViewModelBase.isTrue');

  @override
  bool get isTrue {
    _$isTrueAtom.reportRead();
    return super.isTrue;
  }

  @override
  set isTrue(bool value) {
    _$isTrueAtom.reportWrite(value, super.isTrue, () {
      super.isTrue = value;
    });
  }

  final _$isVisibleAtom = Atom(name: '_QuestionViewModelBase.isVisible');

  @override
  bool get isVisible {
    _$isVisibleAtom.reportRead();
    return super.isVisible;
  }

  @override
  set isVisible(bool value) {
    _$isVisibleAtom.reportWrite(value, super.isVisible, () {
      super.isVisible = value;
    });
  }

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

  final _$questionListAtom = Atom(name: '_QuestionViewModelBase.questionList');

  @override
  List<dynamic> get questionList {
    _$questionListAtom.reportRead();
    return super.questionList;
  }

  @override
  set questionList(List<dynamic> value) {
    _$questionListAtom.reportWrite(value, super.questionList, () {
      super.questionList = value;
    });
  }

  final _$changePageViewAsyncAction =
      AsyncAction('_QuestionViewModelBase.changePageView');

  @override
  Future<void> changePageView() {
    return _$changePageViewAsyncAction.run(() => super.changePageView());
  }

  final _$_QuestionViewModelBaseActionController =
      ActionController(name: '_QuestionViewModelBase');

  @override
  void setTrue(bool data) {
    final _$actionInfo = _$_QuestionViewModelBaseActionController.startAction(
        name: '_QuestionViewModelBase.setTrue');
    try {
      return super.setTrue(data);
    } finally {
      _$_QuestionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVisible(bool data) {
    final _$actionInfo = _$_QuestionViewModelBaseActionController.startAction(
        name: '_QuestionViewModelBase.setVisible');
    try {
      return super.setVisible(data);
    } finally {
      _$_QuestionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTrueCount() {
    final _$actionInfo = _$_QuestionViewModelBaseActionController.startAction(
        name: '_QuestionViewModelBase.setTrueCount');
    try {
      return super.setTrueCount();
    } finally {
      _$_QuestionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
trueAnswerCount: ${trueAnswerCount},
isTrue: ${isTrue},
isVisible: ${isVisible},
controller: ${controller},
pageViewController: ${pageViewController},
questionList: ${questionList}
    ''';
  }
}
