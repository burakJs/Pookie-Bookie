// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ShopViewModel on _ShopViewModelBase, Store {
  final _$searchControllerAtom =
      Atom(name: '_ShopViewModelBase.searchController');

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

  final _$shopsAtom = Atom(name: '_ShopViewModelBase.shops');

  @override
  List<dynamic> get shops {
    _$shopsAtom.reportRead();
    return super.shops;
  }

  @override
  set shops(List<dynamic> value) {
    _$shopsAtom.reportWrite(value, super.shops, () {
      super.shops = value;
    });
  }

  final _$searchShopsAtom = Atom(name: '_ShopViewModelBase.searchShops');

  @override
  List<dynamic> get searchShops {
    _$searchShopsAtom.reportRead();
    return super.searchShops;
  }

  @override
  set searchShops(List<dynamic> value) {
    _$searchShopsAtom.reportWrite(value, super.searchShops, () {
      super.searchShops = value;
    });
  }

  final _$_ShopViewModelBaseActionController =
      ActionController(name: '_ShopViewModelBase');

  @override
  void searchshop(String keyword) {
    final _$actionInfo = _$_ShopViewModelBaseActionController.startAction(
        name: '_ShopViewModelBase.searchshop');
    try {
      return super.searchshop(keyword);
    } finally {
      _$_ShopViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
searchController: ${searchController},
shops: ${shops},
searchShops: ${searchShops}
    ''';
  }
}
