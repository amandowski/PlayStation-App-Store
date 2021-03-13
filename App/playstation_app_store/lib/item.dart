import 'package:flutter/material.dart';
import 'package:playstation_app_store/consoles.dart';
import 'package:playstation_app_store/controllers.dart';
import 'package:playstation_app_store/accessories.dart';
import 'package:playstation_app_store/account.dart';

class Item extends StatelessWidget {
  final String itemName;
  final String price;
  final String image;
  Item(
      {Key key,
      @required this.itemName,
      @required this.price,
      @required this.image})
      : super(key: key);

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
                    onTap: () {/* Write listener code here */},
                    child: Icon(
                      Icons.shopping_cart,
                      size: 26.0,
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {/* Write listener code here */},
                    child: Icon(
                      Icons.account_circle,
                      size: 26.0,
                    ),
                  )),
            ],
          ),
          body: ListView(
            children: [
              Container(
                margin: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage(image),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                width: 300.0,
                height: 200.0,
                padding: EdgeInsets.all(20.0),
              ),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: itemName,
                        style: TextStyle(color: Colors.indigo[900])),
                    TextSpan(
                        text: price,
                        style: TextStyle(color: Colors.indigo[900])),
                  ],
                ),
              ),
              RaisedButton(
                child: Text(
                  'Back',
                  style: TextStyle(color: Colors.indigo[900], fontSize: 30),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              RaisedButton(
                child: Text(
                  'Add to Cart',
                  style: TextStyle(color: Colors.indigo[900], fontSize: 30),
                ),
                //onPressed: {/* Write listener code here */}
              ),
            ],
          ),
        ));
  }
}
