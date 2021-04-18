import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';

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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: TextField(
            onChanged: (value) => viewModel.searchBook(value),
            controller: viewModel.searchController,
            decoration: InputDecoration(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintText: "Search book here"),
          ),
        ),
        body: Observer(builder: (_) {
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
                  return BookCard(
                    book: viewModel.searchBooks.length <= 0 ? viewModel.books[index] : viewModel.searchBooks[index],
                  );
                }),
              );
            },
          );
        }),
      ),
    );
  }
}

// crossAxisCount: 2,
// children: List.generate(viewModel.books.length, (index) {
//   return BookCard(
//     book: viewModel.books[index],
//   );
// })
