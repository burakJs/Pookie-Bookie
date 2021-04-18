import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pookie_bookie/core/base/model/base_view_model.dart';
import 'package:pookie_bookie/view/book/model/book_model.dart';
part 'book_view_model.g.dart';

class BookViewModel = _BookViewModelBase with _$BookViewModel;

abstract class _BookViewModelBase with Store, BaseViewModel {
  void setContext(BuildContext context) => this.context = context;
  void init() {}

  List books = [
    const Book(title: "xxxxxxxx", img: Icons.android),
    const Book(title: "yyyyyyyy", img: Icons.android),
    const Book(title: "zzzzzzzz", img: Icons.android),
    const Book(title: "aaaaaaaa", img: Icons.android),
    const Book(title: "bbbbbbbbb", img: Icons.android),
    const Book(title: "eeeeeeee", img: Icons.android),
    const Book(title: "ggggggg", img: Icons.android),
    const Book(title: "ddddddddd", img: Icons.android),
    const Book(title: "xxxxxxxx", img: Icons.android),
    const Book(title: "xxxxxxxx", img: Icons.android),
    const Book(title: "xxxxxxxx", img: Icons.android),
    const Book(title: "xxxxxxxx", img: Icons.android),
    const Book(title: "xxxxxxxx", img: Icons.android),
    const Book(title: "xxxxxxxx", img: Icons.android),
    const Book(title: "xxxxxxxx", img: Icons.android),
    const Book(title: "xxxxxxxx", img: Icons.android),
    const Book(title: "xxxxxxxx", img: Icons.android),
    const Book(title: "xxxxxxxx", img: Icons.android),
  ];
}
