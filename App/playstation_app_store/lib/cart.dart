import 'package:flutter/material.dart';
import 'package:playstation_app_store/accessories.dart';
import 'package:playstation_app_store/checkout.dart';
import 'package:playstation_app_store/consoles.dart';
import 'package:playstation_app_store/account.dart';
import 'package:playstation_app_store/main.dart';

class CartItem {
  String cartItemName;
  String cartPrice;
  String cartImage;
  int quantity;
  String subTotal;

  CartItem(
      {this.cartItemName,
      this.cartPrice,
      this.cartImage,
      this.quantity,
      this.subTotal});
}

List<CartItem> cartItem = new List<CartItem>();

decrementItemFromCart(int index) {
  if (cartItem[index].quantity > 1) {
    cartItem[index].quantity = --cartItem[index].quantity;
    //cartItem[i].subTotal = (cartItem[i].quantity * cartItem[i].cartPrice).roundToDouble() as String;
  } else {
    cartItem.removeAt(index);
  }
}

deleteItemFromCart(int index) {
  cartItem.removeAt(index);
}

incrementItemFromCart(int index) {
  if (cartItem[index].quantity == null) {
    cartItem[index].quantity = 1;
  }
  cartItem[index].quantity = ++cartItem[index].quantity;
  //int i = cartItem[1].quantity;
  //cartItem[index].subTotal = (cartItem[index].quantity * cartItem[index].cartPrice).roundToDouble() as String;
}

getTotalAmount() {
  double totalAmount = 0.0;
  cartItem.forEach((element) {
    // totalAmount += element.subTotal;
  });
  return totalAmount;
}

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "PlayStation",
              style: TextStyle(
                fontSize: 35.0,
              ),
            ),
            backgroundColor: Colors.indigo[900],
            leading: GestureDetector(
              child: PopupMenuButton(
                offset: Offset(0, 55),
                icon: Icon(Icons.menu),
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  PopupMenuItem(
                    child: ListTile(
                      title: Text('Consoles'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Consoles()),
                        );
                      },
                    ),
                  ),
                  PopupMenuItem(
                    child: ListTile(
                      title: Text('Accessories'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Accessories()),
                        );
                      },
                    ),
                  ),
                  PopupMenuItem(
                    child: ListTile(
                      title: Text('My Account'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Account()),
                        );
                      },
                    ),
                  ),
                  PopupMenuItem(
                    child: ListTile(
                      title: Text('Help'),
                      onTap: () {/* Write listener code here */},
                    ),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cart()),
                      );
                    },
                    child: Icon(
                      Icons.shopping_cart,
                      size: 26.0,
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Account()),
                      );
                    },
                    child: Icon(
                      Icons.account_circle,
                      size: 26.0,
                    ),
                  )),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(children: <Widget>[
                  Text(
                    'CART',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12.0),
                  cartList(),
                  SizedBox(height: 12.0),
                  SizedBox(height: 12.0),
                  Row(
                    children: <Widget>[
                      Text(
                        "Price: ",
                        style: TextStyle(
                            color: Colors.red[900],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(height: 12.0),
                  Column(children: <Widget>[
                    Container(
                      width: 100.0,
                      child: Center(
                          child: Text(
                        'ORDER SUMMARY',
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
                      Text(
                        "Subtotal: ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.0),
                  Row(
                    children: <Widget>[
                      Text(
                        "Discount: ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.0),
                  Row(children: <Widget>[
                    RaisedButton(
                      child: Text(
                        'Continue Shopping',
                        style: TextStyle(color: Colors.red[900], fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PlayStationApp()),
                        );
                      },
                    ),
                    Spacer(),
                    RaisedButton(
                      child: Text(
                        'Checkout',
                        style: TextStyle(color: Colors.red[900], fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Checkout()),
                        );
                      },
                    ),
                  ]),
                ])),
          ),
        ));
  }
}

Widget cartList() {
  if (cartItem.length != 0) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: cartItem.length,
      itemBuilder: (context, index) {
        return Column(children: <Widget>[
          Row(children: <Widget>[
            Container(
              width: 80.0,
              height: 80.0,
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
                width: 100.0,
                child: Text(
                  cartItem[index].cartItemName,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ]),
          ]),
          Row(children: <Widget>[
            Container(
              width: 25.0,
              height: 25.0,
              decoration: BoxDecoration(
                color: Colors.blue[300],
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: GestureDetector(
                onTap: () {
                  incrementItemFromCart(index);
                },
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ),
            //print (counter),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              //cartItem[index].quantity = 1;
              child: Text(
                cartItem[index].quantity.toString(),
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 25.0,
              height: 25.0,
              decoration: BoxDecoration(
                color: Colors.blue[300],
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: GestureDetector(
                onTap: () {
                  decrementItemFromCart(index);
                },
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ),
            Spacer(),
            RaisedButton(
              child: Text(
                'Delete',
                style: TextStyle(color: Colors.red[900], fontSize: 20),
              ),
              onPressed: () {
                deleteItemFromCart(index);
              },
            ),
            Spacer(),
            RaisedButton(
              child: Text(
                'Save for later',
                style: TextStyle(color: Colors.red[900], fontSize: 20),
              ),
              onPressed: () {
                // Navigator.pop(context);
              },
            ),
          ])
        ]);
      },
    );
  }
  return Text('Nothing in Cart');
}
