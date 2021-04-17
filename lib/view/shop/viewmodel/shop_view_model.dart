import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pookie_bookie/core/base/model/base_view_model.dart';
part 'shop_view_model.g.dart';

class ShopViewModel = _ShopViewModelBase with _$ShopViewModel;

abstract class _ShopViewModelBase with Store, BaseViewModel {
  void setContext(BuildContext context) => this.context = context;
  void init() {}
}
