// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BookViewModel on _BookViewModelBase, Store {
  final _$searchControllerAtom =
      Atom(name: '_BookViewModelBase.searchController');

  @override
  TextEditingController get searchController {
    _$searchControllerAtom.reportRead();
    return super.searchController;
  }

  @override
  set searchController(TextEditingController value) {
    _$searchControllerAtom.reportWrite(value, super.searchController, () {
      super.searchController = value;
    });
  }

  final _$booksAtom = Atom(name: '_BookViewModelBase.books');

  @override
  List<dynamic> get books {
    _$booksAtom.reportRead();
    return super.books;
  }

  @override
  set books(List<dynamic> value) {
    _$booksAtom.reportWrite(value, super.books, () {
      super.books = value;
    });
  }

  final _$searchBooksAtom = Atom(name: '_BookViewModelBase.searchBooks');

  @override
  List<dynamic> get searchBooks {
    _$searchBooksAtom.reportRead();
    return super.searchBooks;
  }

  @override
  set searchBooks(List<dynamic> value) {
    _$searchBooksAtom.reportWrite(value, super.searchBooks, () {
      super.searchBooks = value;
    });
  }

  final _$_BookViewModelBaseActionController =
      ActionController(name: '_BookViewModelBase');

  @override
  void searchBook(String keyword) {
    final _$actionInfo = _$_BookViewModelBaseActionController.startAction(
        name: '_BookViewModelBase.searchBook');
    try {
      return super.searchBook(keyword);
    } finally {
      _$_BookViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
searchController: ${searchController},
books: ${books},
searchBooks: ${searchBooks}
    ''';
  }
}
