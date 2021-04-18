import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pookie_bookie/core/init/cache/locale_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/base/model/base_view_model.dart';
import '../model/top_toy_model.dart';

part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store, BaseViewModel {
  void setContext(BuildContext context) => this.context = context;
  void init() {}

  @observable
  List banners = [
    TopToy('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTO60byFZGMO1ZWDJ7nBMoci2tT2evd0ZRQA&usqp=CAU', 12),
    TopToy('https://freepikpsd.com/wp-content/uploads/2019/10/toys-png-3.png', 10),
    TopToy('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwwr7bjv54OjVqKnMu0OeP4cGyK36pAamXEw&usqp=CAU', 8),
    TopToy('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTooErQG2VDU3h2xbHU5LzVr2J7bt_bxKqtcw&usqp=CAU', 15),
    TopToy('https://cdn-nq.toyzzshop.com/product/300x300/92cf3_Funko_Pop_Toy_Story_4_:_Woody_Figur.jpg', 6),
  ];
}
