// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  final _$bannersAtom = Atom(name: '_HomeViewModelBase.banners');

  @override
  List<dynamic> get banners {
    _$bannersAtom.reportRead();
    return super.banners;
  }

  @override
  set banners(List<dynamic> value) {
    _$bannersAtom.reportWrite(value, super.banners, () {
      super.banners = value;
    });
  }

  @override
  String toString() {
    return '''
banners: ${banners}
    ''';
  }
}
