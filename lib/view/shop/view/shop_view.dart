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
      onPageBuilder: (BuildContext context, ShopViewModel value) => Scaffold(
        body: ListView(
          children: <Widget>[searchHeader(), viewedItemListView()],
        ),
      ),
    );
  }

  searchHeader() {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.arrow_back,
              color: Colors.grey.shade700,
            ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search for brands & products",
                ),
              ),
            )
          ],
        ));
  }

  createWishListItem() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey.shade100)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              width: 120,
              decoration: BoxDecoration(
                color: Colors.teal.shade200,
                image: DecorationImage(
                    image: AssetImage('../../../../asset/images/cikolata.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            flex: 70,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              "HIGHLANDER",
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              "\$12",
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              children: <Widget>[
                Text(
                  "55% OFF",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  viewedItemListView() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Text(
              "ITEMS YOU HAVE VIEWED",
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 200),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return createWishListItem();
                },
                itemCount: 10,
                primary: false,
                scrollDirection: Axis.horizontal,
              ),
            ),
          )
        ],
      ),
    );
  }
}
