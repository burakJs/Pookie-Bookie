import 'package:flutter/material.dart';
import 'package:pookie_bookie/core/base/view/base_widget.dart';
import 'package:pookie_bookie/view/shop/viewmodel/shop_view_model.dart';

class ShopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<ShopViewModel>(
      viewModel: ShopViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context, ShopViewModel value) => Scaffold(),
    );
  }
}
