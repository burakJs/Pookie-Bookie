import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:pookie_bookie/core/base/view/base_widget.dart';

import 'package:pookie_bookie/view/home/viewmodel/menu_view_model.dart';

class MenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<MenuViewModel>(
      viewModel: MenuViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, MenuViewModel value) => Scaffold(
        appBar: AppBar(
          title: Text('SA'),
        ),
        body: Padding(
          padding: context.paddingNormal,
          child: Container(
            width: context.dynamicWidth(0.1),
            color: context.colorScheme.background,
            child: Text('SA'),
          ),
        ),
      ),
    );
  }
}
