import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../model/shop_model.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({Key key, this.shop}) : super(key: key);
  final Shop shop;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.network(
            shop.img,
            height: context.height / 4,
          ),
          Text(
            shop.title,
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          Text(
            '${shop.point.toString()} Puan',
            style: TextStyle(color: Colors.black, fontSize: 24),
          )
        ],
      ),
    );
  }
}
