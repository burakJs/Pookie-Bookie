import 'package:flutter/material.dart';
import 'package:pookie_bookie/core/base/view/base_widget.dart';
import 'package:pookie_bookie/view/book/viewmodel/book_view_model.dart';

class BookView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<BookViewModel>(
      viewModel: BookViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context, BookViewModel value) => Scaffold(),
    );
  }
}
