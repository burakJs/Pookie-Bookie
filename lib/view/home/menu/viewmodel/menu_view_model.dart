import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pookie_bookie/core/base/model/base_view_model.dart';
part 'menu_view_model.g.dart';

class MenuViewModel = _MenuViewModelBase with _$MenuViewModel;

abstract class _MenuViewModelBase with Store, BaseViewModel {
  void setContext(BuildContext context) => this.context = context;
  void init() {}

  @observable
  int a = 5;
}
