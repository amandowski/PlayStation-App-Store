import 'package:flutter/material.dart';
import 'package:playstation_app_store/accessories.dart';
import 'package:playstation_app_store/account.dart';
import 'package:playstation_app_store/billing.dart';
import 'package:playstation_app_store/cart.dart';
import 'package:playstation_app_store/item.dart';
import 'package:playstation_app_store/main.dart';

class Total extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    getTotalAmount();
    getDiscount();
    return Column(children: <Widget>[
      ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: cartItem.length,
        itemBuilder: (context, index) {
          cartItem[index].subTotal = double.parse(cartItem[index].cartPrice) *
              cartItem[index].quantity;
          return Column(children: <Widget>[
            Row(children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: ExactAssetImage(cartItem[index].cartImage),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              SizedBox(height: 12.0),
              Column(children: <Widget>[
                Container(
                  width: 200.0,
                  child: Text(
                    cartItem[index].cartItemName,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ]),
            ]),
            Row(children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "Quantity: " + cartItem[index].quantity.toString(),
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ]),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Price: \$ " + cartItem[index].subTotal.toString(),
                    style: TextStyle(
                        color: Colors.red[900],
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ]);
        },
      ),
      SizedBox(height: 12.0),
      SizedBox(height: 12.0),
      Divider(
        color: Colors.black,
      ),
      SizedBox(height: 12.0),
      Column(children: <Widget>[
        Container(
          width: 100.0,
          child: Center(
              child: Text(
            'TOTAL SUMMARY',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          )),
        ),
      ]),
      SizedBox(height: 12.0),
      Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Subtotal: \$" + totalAmount.toString(),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      SizedBox(height: 12.0),
      Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Discount: \$" + disCountedAmount.toStringAsFixed(2),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Total: \$" + (totalAmount - disCountedAmount).toStringAsFixed(2),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          RaisedButton(
            child: Text(
              'Submit',
              style: TextStyle(color: Colors.red[900], fontSize: 20),
            ),
            onPressed: () {
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    // Retrieve the text the that user has entered by using the
                    // TextEditingController.
                    title: Text("Order Completed \n\n  Thank you !"),
                    actions: <Widget>[
                      // usually buttons at the bottom of the dialog
                      new FlatButton(
                        child: new Text("Close"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      PlayStationApp()));
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    ]);
  }
}
