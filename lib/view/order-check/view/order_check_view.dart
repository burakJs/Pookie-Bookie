import 'package:flutter/material.dart';
import 'package:pookie_bookie/core/base/view/base_widget.dart';
import 'package:pookie_bookie/core/init/theme/app_theme_light.dart';
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
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtGkSmnh7DYLxHrsOWVTlzYKIXgV5FCrrsaA&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJFdsCAIFxTTTs-OFnaSIbs28OUM5aTAc2tw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ84oA5CV23Mtynmw-Gk3MjVSrpmCrtVbiwtg&usqp=CAU"
    ];
    return Column(
      children: [
        // value değer kadar dönücek
        buildCardList(context, imageList, 0),
        buildCardList(context, imageList, 1),
        buildCardList(context, imageList, 2),
        buildPaymentInformation(context),
        buildButton(context)
      ],
    );
  }

  Widget buildCardList(BuildContext context, List imageList, int value) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 30),
      child: Center(
        child: Card(
          color: Colors.blue.shade50,
          child: Center(
            child: ListTile(
              leading: CircleAvatar(
                child: Image.network(imageList[value]),
                radius: 18,
              ),
              title: Text("ürün adı "),
              subtitle: Text("ürün ayrıntıları"),
              trailing: Icon(Icons.add),
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
                TextField(
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
                ),
              ],
            ),
          )),
    );
  }

  Widget buildButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 5),
      child: Container(
        width: 10,
        height: 10,
        alignment: Alignment.centerRight,
        // ignore: deprecated_member_use
        child: FlatButton(
          padding: EdgeInsets.only(right: 50),
          onPressed: () {},
          child: Text(
            "Ödeme Yap",
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
