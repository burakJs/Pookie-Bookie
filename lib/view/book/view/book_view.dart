import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';
import 'package:pookie_bookie/core/init/navigation/navigation_service.dart';

import '../../../core/base/view/base_widget.dart';
import '../viewmodel/book_view_model.dart';
import '../widget/book_card_widget.dart';

class BookView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<BookViewModel>(
      viewModel: BookViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context, BookViewModel viewModel) => Scaffold(
        appBar: buildAppBar(viewModel),
        body: Observer(builder: (_) {
          return buildGridViewBooks(viewModel, context);
        }),
      ),
    );
  }

  AppBar buildAppBar(BookViewModel viewModel) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: buildTextFieldSearch(viewModel),
    );
  }

  TextField buildTextFieldSearch(BookViewModel viewModel) {
    return TextField(
      onChanged: (value) => viewModel.searchBook(value),
      controller: viewModel.searchController,
      decoration: InputDecoration(
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          hintText: "Search book here"),
    );
  }

  GridView buildGridViewBooks(BookViewModel viewModel, BuildContext context) {
    return GridView.builder(
      itemCount: viewModel.searchBooks.length <= 0 ? viewModel.books.length : viewModel.searchBooks.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: context.width / context.height,
      ),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => viewModel.searchBook(viewModel.searchController.text),
          child: Observer(builder: (_) {
            var book = viewModel.searchBooks.length <= 0 ? viewModel.books[index] : viewModel.searchBooks[index];
            return GestureDetector(
              onTap: () => NavigationService.instance.navigateToPageClear(path: '/question', object: {'data': book.title}),
              child: BookCard(
                book: book,
              ),
            );
          }),
        );
      },
    );
  }
}
