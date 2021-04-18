import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pookie_bookie/view/shop/model/shop_model.dart';

import '../../../core/base/model/base_view_model.dart';

part 'shop_view_model.g.dart';

class ShopViewModel = _ShopViewModelBase with _$ShopViewModel;

abstract class _ShopViewModelBase with Store, BaseViewModel {
  void setContext(BuildContext context) => this.context = context;
  void init() {}
  @observable
  var searchController = TextEditingController();
  @observable
  List shops = [
    Shop(
        title: "Çikolata",
        img:
            'https://productimages.hepsiburada.net/s/35/1500/10492301082674.jpg',
        point: 300),
    Shop(
        title: "Oyuncak buzağı",
        img:
            'https://cdn.dsmcdn.com/ty65/product/media/images/20210204/22/60026179/71343962/1/1_org_zoom.jpg',
        point: 600),
    Shop(
        title: "Oyuncak Araba",
        img:
            'https://ae01.alicdn.com/kf/Hc4a37eb022ae496fb07582a78bfaabc1J.jpg_q50.jpg',
        point: 800),
    Shop(
        title: "Puzzle",
        img:
            'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRZtHxiefCRJVQZdDiV3UeOzl3ZT_yTUsqWGmXiR1KvugjeFNnrmNeRAk2tYdYflpGzaVQWWSYX1YbirVGvohhRkHwBscTZgr9Q6BcN2xeBmCiu8ax5g7eYfASJz3o&usqp=CAE',
        point: 200),
    Shop(
        title: "Boyama Kalemleri",
        img:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_qEqz6DCiRMdJ7F1VDsN7g7s3uYbt_FcLrg&usqp=CAU',
        point: 400),
    Shop(
        title: "Boyama Kitabı",
        img:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5VoUXTlhIhwVwdQ_H36a8mbz-wlq8pHUi3A&usqp=CAU',
        point: 300),
    Shop(
        title: "Futbool Topu",
        img:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnhpr4QzGs8O2I0DSrey41uGPnE6A7w6I0QA&usqp=CAU',
        point: 250),
  ];

  @observable
  List searchShops = [];

  @action
  void searchshop(String keyword) {
    searchShops.clear();
    if (keyword != '') {
      for (var shop in shops) {
        if ((shop.title).toLowerCase().contains(keyword.toLowerCase())) {
          searchShops.add(shop);
        } else {
          searchShops.remove(shop);
        }
      }
    }
    searchShops = searchShops;
  }
}
