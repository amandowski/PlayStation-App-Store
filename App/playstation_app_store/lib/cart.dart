import 'package:flutter/material.dart';
import 'package:playstation_app_store/accessories.dart';
import 'package:playstation_app_store/checkout.dart';
import 'package:playstation_app_store/consoles.dart';
import 'package:playstation_app_store/account.dart';
import 'package:playstation_app_store/main.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int counter = 1;
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
                        MaterialPageRoute(builder: (context) => Accessories()),
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
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(children: <Widget>[
              Positioned(
                  top: 75.0,
                  //left: 15.0,
                  child: Center(
                      child: Text(
                    'CART',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold),
                  ))),
              SizedBox(height: 12.0),
              Row(children: <Widget>[
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                      image: ExactAssetImage(" "),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                SizedBox(height: 12.0),
                Column(children: <Widget>[
                  Container(
                    width: 100.0,
                    child: Text(
                      "xyz",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ]),
              ]),
              SizedBox(height: 12.0),
              Row(children: <Widget>[
                Container(
                  width: 25.0,
                  height: 25.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      counter + 1;
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
                  child: Text(
                    "1",
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
                      counter - 1;
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
                    //Navigator.pop(context);
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
              ]),
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
                      MaterialPageRoute(builder: (context) => PlayStationApp()),
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
    );
  }
}
