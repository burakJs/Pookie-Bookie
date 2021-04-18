import 'package:flutter/material.dart';
import '../../../core/base/view/base_widget.dart';
import '../viewmodel/order_check_view_model.dart';

class OrderCheckView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<OrderCheckViewModel>(
      viewModel: OrderCheckViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context, OrderCheckViewModel value) => Scaffold(),
    );
  }
}
