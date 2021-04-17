import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pookie_bookie/core/base/model/base_view_model.dart';
part 'book_view_model.g.dart';

class BookViewModel = _BookViewModelBase with _$BookViewModel;

abstract class _BookViewModelBase with Store, BaseViewModel {
  void setContext(BuildContext context) => this.context = context;
  void init() {}
}
