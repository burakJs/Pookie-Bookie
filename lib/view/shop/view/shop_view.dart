import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';

import '../../../core/base/view/base_widget.dart';
import '../viewmodel/shop_view_model.dart';
import '../widget/shop_card_widget.dart';

class ShopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<ShopViewModel>(
      viewModel: ShopViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context, ShopViewModel viewModel) =>
          Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: TextField(
            onChanged: (value) => viewModel.searchshop(value),
            controller: viewModel.searchController,
            decoration: InputDecoration(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintText: "Search İtem here"),
          ),
        ),
        body: Observer(builder: (_) {
          return GridView.builder(
            itemCount: viewModel.searchShops.length <= 0
                ? viewModel.shops.length
                : viewModel.searchShops.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: context.width / context.height,
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () =>
                    viewModel.searchshop(viewModel.searchController.text),
                child: Observer(builder: (_) {
                  return ShopCard(
                    shop: viewModel.searchShops.length <= 0
                        ? viewModel.shops[index]
                        : viewModel.searchShops[index],
                  );
                }),
              );
            },
          );
        }),
      ),
    );
  }
}
