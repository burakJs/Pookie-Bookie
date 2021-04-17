import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:mobx/mobx.dart';
import 'package:pookie_bookie/core/base/model/base_view_model.dart';
part 'question_view_model.g.dart';

class QuestionViewModel = _QuestionViewModelBase with _$QuestionViewModel;

abstract class _QuestionViewModelBase with Store, BaseViewModel {
  void setContext(BuildContext context) => this.context = context;
  void init() {}

  @observable
  PageController controller;

  @observable
  int pageViewController = 0;

  @action
  Future<void> changePageView() async {
    if (pageViewController >= 3) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Emin misin'),
          content: Text('Sınavını bitirmek istediğinden emin misin ?'),
          actions: [
            TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text(
                  'Hayır',
                  style: context.textTheme.headline5.copyWith(color: Colors.red, fontWeight: FontWeight.bold),
                )),
            TextButton(
                onPressed: () {
                  navigationService.navigateToPageClear(path: '/home');
                },
                child: Text(
                  'Evet',
                  style: context.textTheme.headline5.copyWith(color: Colors.green, fontWeight: FontWeight.bold),
                )),
          ],
        ),
      );
    } else {
      pageViewController += pageViewController == 3 ? 0 : 1;
      print(pageViewController);
      await controller.animateToPage(pageViewController, duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);
    }
  }
}
