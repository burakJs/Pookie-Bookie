import 'package:flutter/material.dart';
import 'package:pookie_bookie/core/base/view/base_widget.dart';
import 'package:pookie_bookie/view/order-check/viewmodel/order_check_view_model.dart';

class OrderCheckView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<OrderCheckViewModel>(
      viewModel: OrderCheckViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context, OrderCheckViewModel value) =>
          Scaffold(
        body: buildBody(context),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    List imageList = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTO60byFZGMO1ZWDJ7nBMoci2tT2evd0ZRQA&usqp=CAU",
      "https://freepikpsd.com/wp-content/uploads/2019/10/toys-png-3.png",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwwr7bjv54OjVqKnMu0OeP4cGyK36pAamXEw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTooErQG2VDU3h2xbHU5LzVr2J7bt_bxKqtcw&usqp=CAU",
      "https://cdn-nq.toyzzshop.com/product/300x300/92cf3_Funko_Pop_Toy_Story_4_:_Woody_Figur.jpg",
    ];
    return Container(
      child: Column(
        children: [
          // value(basket_product)değer kadar dönücek
          buildCardList(context, imageList, 0, "Pikachu"),
          buildCardList(context, imageList, 1, "Toy Free"),
          buildCardList(context, imageList, 2, "Silverlit My Puppy Robot"),
          buildCardList(context, imageList, 3, "Brüder Ilw"),
          buildCardList(context, imageList, 4, "Funko Pop"),
          buildPaymentInformation(context),
          buildButton(context)
        ],
      ),
    );
  }

  Widget buildCardList(
      BuildContext context, List imageList, int value, String name) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 20),
      child: Center(
        child: Card(
          color: Colors.orange.shade300,
          child: Center(
            child: ListTile(
              leading: CircleAvatar(
                child: Image.network(imageList[value]),
                radius: 25,
              ),
              title: Text(name),
              //subtitle: Text("ürün ayrıntıları"),
              // trailing: Icon(Icons.add),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPaymentInformation(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 5),
      child: Container(
          width: 300,
          height: 350,
          child: Center(
            child: ListView(
              children: [
                buildContainer(20, 80, "100"),
                buildContainer(80, 20, "150"),
              ],
            ),
          )),
    );
  }

  Widget buildContainer(double left, double right, String point) {
    return Padding(
      padding: EdgeInsets.only(left: left, right: right, bottom: 5, top: 5),
      child: Row(
        // mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 100,
            height: 50,
            color: Colors.orange.shade200,
            child: Center(
              child: Text(
                point,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButton(BuildContext context) {
    return Container(
      width: 360,
      height: 30,
      color: Colors.orange.shade400,
      alignment: Alignment.bottomCenter,
      // ignore: deprecated_member_use
      child: FlatButton(
        padding: EdgeInsets.only(right: 50),
        onPressed: () {},
        child: Center(
          child: Text(
            "Ödeme Yap",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
/*TextField(
                  keyboardType: TextInputType.datetime,
                  textInputAction: TextInputAction.done,
                  maxLength: 25,
                  //onSubmitted: {String s}=>, tum verı okeylenınce verıyı alma

                  decoration: InputDecoration(
                    hintText: "   Kart İsmi",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.done,
                  maxLength: 16,
                  //onSubmitted: {String s}=>, tum verı okeylenınce verıyı alma

                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                        color: AppThemeLight
                            .instance.colorSchemeLight.black), //buraga sor
                    //labelText: "Kart İsmi",

                    hintText: "   Kart numarasını giriniz",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  maxLength: 8,
                  //onSubmitted: {String s}=>, tum verı okeylenınce verıyı alma

                  decoration: InputDecoration(
                    hintText: "   Tarih",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  maxLength: 3,
                  //onSubmitted: {String s}=>, tum verı okeylenınce verıyı alma

                  decoration: InputDecoration(
                    hintText: "   CVC",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ), */
