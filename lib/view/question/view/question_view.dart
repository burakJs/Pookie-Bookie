import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';
import 'package:pookie_bookie/view/book/model/book_model.dart';

import '../../../core/base/view/base_widget.dart';
import '../viewmodel/question_view_model.dart';

class QuestionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<QuestionViewModel>(
      viewModel: QuestionViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
        model.controller = PageController(initialPage: 0);
      },
      onPageBuilder: (BuildContext context, QuestionViewModel viewModel) => Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(flex: 3, child: buildObserverQuestionCard(viewModel)),
              Expanded(child: buildRowButtons(viewModel, context)),
            ],
          ),
        ),
      ),
    );
  }

  Observer buildObserverQuestionCard(QuestionViewModel viewModel) {
    return Observer(builder: (_) {
      return PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 4,
          controller: viewModel.controller,
          itemBuilder: (BuildContext context, int index) {
            return buildContainerCard(context, index, viewModel);
          });
    });
  }

  Container buildContainerCard(BuildContext context, index, viewModel) {
    var question = viewModel.questionList[index];
    return Container(
      width: context.width,
      child: Card(
        color: context.colorScheme.secondary,
        child: Padding(
          padding: context.paddingMedium,
          child: Column(
            children: [
              Text(
                question.questionTitle,
                style: context.textTheme.headline6.copyWith(color: Colors.white),
              ),
              Spacer(),
              buildRowAnswer(context, 'A', question.answers[0], question.trueAnswer, viewModel),
              buildRowAnswer(context, 'B', question.answers[1], question.trueAnswer, viewModel),
              buildRowAnswer(context, 'C', question.answers[2], question.trueAnswer, viewModel),
              buildRowAnswer(context, 'D', question.answers[3], question.trueAnswer, viewModel),
              Spacer(),
              Observer(builder: (_) {
                return Visibility(
                  visible: viewModel.isVisible,
                  child: Text(
                    viewModel.isTrue ? 'Cevab??n??z Do??ru' : 'Cevab??n??z Yanl????',
                    style: context.textTheme.headline4.copyWith(color: Colors.white),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRowButtons(QuestionViewModel viewModel, BuildContext context) {
    return Padding(
      padding: context.paddingMedium,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
              onPressed: () => viewModel.changePageView(),
              child: Text(
                'PAS',
                style: context.textTheme.headline4.copyWith(color: context.colorScheme.onPrimary, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 3,
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
              onPressed: () => viewModel.changePageView(),
              child: Text(
                'SONRAKI SORU',
                textAlign: TextAlign.center,
                style: context.textTheme.headline5.copyWith(
                  color: context.colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRowAnswer(BuildContext context, String option, String answerText, String trueAnswer, QuestionViewModel viewModel) {
    return Padding(
      padding: context.verticalPaddingLow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(context.colorScheme.error)),
            onPressed: () {
              if (viewModel.isVisible == false) {
                if (answerText == trueAnswer) {
                  viewModel.setTrueCount();
                  viewModel.setTrue(true);
                  print(viewModel.trueAnswerCount);
                } else {
                  viewModel.setTrue(false);
                }
                viewModel.setVisible(true);
              }
            },
            child: Observer(builder: (_) {
              return Text(
                option,
                style: context.textTheme.headline6.copyWith(color: Colors.white),
              );
            }),
          ),
          Container(
            width: 200,
            child: Observer(builder: (_) {
              return Text(
                '$answerText',
                overflow: TextOverflow.clip,
                maxLines: 2,
                style: context.textTheme.headline6.copyWith(color: Colors.white),
              );
            }),
          ),
        ],
      ),
    );
  }
}
