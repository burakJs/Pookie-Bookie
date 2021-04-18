import 'package:flutter/material.dart';
import 'package:pookie_bookie/core/base/view/base_widget.dart';
import 'package:pookie_bookie/view/book/model/book_model.dart';
import 'package:pookie_bookie/view/book/viewmodel/book_view_model.dart';
import 'package:pookie_bookie/view/book/widget/book_card_widget.dart';

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
          backgroundColor: Colors.black54,
          title: TextField(
            decoration: InputDecoration(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintText: "Search book here"),
          ),
        ),
        body: GridView.count(
            crossAxisCount: 2,
            children: List.generate(viewModel.books.length, (index) {
              return BookCard(
                book: viewModel.books[index],
              );
            })),
      ),
    );
  }
}
