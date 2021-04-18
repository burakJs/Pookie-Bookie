import 'package:flutter/material.dart';

import '../../../core/base/view/base_widget.dart';
import '../viewmodel/shop_view_model.dart';

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
