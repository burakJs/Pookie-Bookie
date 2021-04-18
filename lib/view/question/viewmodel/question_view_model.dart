import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:mobx/mobx.dart';
import 'package:pookie_bookie/view/question/model/question_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/base/model/base_view_model.dart';

part 'question_view_model.g.dart';

class QuestionViewModel = _QuestionViewModelBase with _$QuestionViewModel;

abstract class _QuestionViewModelBase with Store, BaseViewModel {
  void setContext(BuildContext context) => this.context = context;
  Future<void> init() async {}

  @observable
  int point = 0;

  @observable
  int trueAnswerCount = 0;

  @observable
  bool isTrue = false;

  @observable
  bool isVisible = false;

  @observable
  PageController controller;

  @observable
  int pageViewController = 0;

  @observable
  List questionList = [
    Question('Soru 1', ['Cevap11', 'Cevap12', 'Cevap13', 'Cevap14'], 'Cevap11'),
    Question('Soru 2', ['Cevap21', 'Cevap22', 'Cevap23', 'Cevap24'], 'Cevap23'),
    Question('Soru 3', ['Cevap31', 'Cevap32', 'Cevap33', 'Cevap34'], 'Cevap34'),
    Question('Soru 4', ['Cevap41', 'Cevap42', 'Cevap43', 'Cevap44'], 'Cevap41'),
  ];
  @action
  Future<void> changePageView() async {
    print('Point: $point');
    isVisible = false;
    if (pageViewController >= 3) {
      showDialog(
        context: context,
        builder: (context) => alertDialog(context, trueAnswerCount),
      );
    } else {
      pageViewController += pageViewController == 3 ? 0 : 1;
      print(pageViewController);
      await controller.animateToPage(pageViewController, duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);
    }
  }

  AlertDialog alertDialog(BuildContext context, int trueAnswerCount) {
    return AlertDialog(
      title: trueAnswerCount > 2 ? Text('Tebrikler ,Sınavınız başarılı') : Text('Maalesef, Sınavınız başarısız'),
      content: Text('Bu kitabın sınavında $trueAnswerCount kadar doğru yaptınız'),
      actions: [
        TextButton(
            onPressed: () {
              navigationService.navigateToPageClear(path: '/home');
            },
            child: Text(
              'Ana Menuye Dön',
              style: context.textTheme.headline5.copyWith(color: Colors.green, fontWeight: FontWeight.bold),
            )),
      ],
    );
  }

  @action
  void setTrue(bool data) {
    isTrue = data;
  }

  @action
  void setVisible(bool data) {
    isVisible = data;
  }

  @action
  void setTrueCount() {
    trueAnswerCount += 1;
  }
}
