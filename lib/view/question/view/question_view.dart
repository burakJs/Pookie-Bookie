import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';
import 'package:pookie_bookie/core/base/view/base_widget.dart';
import 'package:pookie_bookie/view/question/viewmodel/question_view_model.dart';

class QuestionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<QuestionViewModel>(
      viewModel: QuestionViewModel(),
      onModelReady: (model) {
        model.setContext(context);
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
            return buildContainerCard(context);
          });
    });
  }

  Container buildContainerCard(BuildContext context) {
    return Container(
      width: context.width,
      child: Card(
        color: context.colorScheme.secondary,
        child: Padding(
          padding: context.paddingMedium,
          child: Column(
            children: [
              Text(
                'Lorem ipsum dolor' * 12,
                style: context.textTheme.headline6.copyWith(color: Colors.white),
              ),
              Spacer(),
              buildRowAnswer(context, 'A', 'Cevap 0'),
              buildRowAnswer(context, 'B', 'Cevap bir'),
              buildRowAnswer(context, 'C', 'Cevap 2'),
              buildRowAnswer(context, 'D', 'Cevap 3'),
              Spacer(),
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

  Widget buildRowAnswer(BuildContext context, String option, String answerText) {
    return Padding(
      padding: context.verticalPaddingLow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(context.colorScheme.error)),
            onPressed: () {},
            child: Text(
              option,
              style: context.textTheme.headline6.copyWith(color: Colors.white),
            ),
          ),
          Container(
            width: 200,
            child: Text(
              '$answerText' * 6,
              overflow: TextOverflow.clip,
              maxLines: 2,
              style: context.textTheme.headline6.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
