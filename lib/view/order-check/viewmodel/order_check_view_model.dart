import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pookie_bookie/core/base/model/base_view_model.dart';
part 'order_check_view_model.g.dart';

class OrderCheckViewModel = _OrderCheckViewModelBase with _$OrderCheckViewModel;

abstract class _OrderCheckViewModelBase with Store, BaseViewModel {
  void setContext(BuildContext context) => this.context = context;
  void init() {}
}
