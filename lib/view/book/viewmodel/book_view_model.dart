import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/base/model/base_view_model.dart';
import '../model/book_model.dart';

part 'book_view_model.g.dart';

class BookViewModel = _BookViewModelBase with _$BookViewModel;

abstract class _BookViewModelBase with Store, BaseViewModel {
  void setContext(BuildContext context) => this.context = context;
  void init() {}

  @observable
  var searchController = TextEditingController();

  @observable
  List books = [
    Book(title: "Küçük Prens", img: 'https://upload.wikimedia.org/wikipedia/tr/thumb/f/f5/Kucukprens.jpg/1200px-Kucukprens.jpg', point: 10),
    Book(title: "Ay'ı Kim Çaldı", img: 'https://i.dr.com.tr/cache/600x600-0/originals/0000000385867-1.jpg', point: 15),
    Book(title: "Abartma Tozu", img: 'https://img.kitapyurdu.com/v1/getImage/fn:9120199/wh:true/miw:200/mih:200', point: 8),
    Book(title: "Şeker Portakalı", img: 'https://img.kitapyurdu.com/v1/getImage/fn:11244377/wh:true/wi:500', point: 12),
  ];

  @observable
  List searchBooks = [];

  @action
  void searchBook(String keyword) {
    searchBooks.clear();
    if (keyword != '') {
      for (var book in books) {
        if ((book.title).toLowerCase().contains(keyword.toLowerCase())) {
          searchBooks.add(book);
        } else {
          searchBooks.remove(book);
        }
      }
    }
    searchBooks = searchBooks;
  }
}
