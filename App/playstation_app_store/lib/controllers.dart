import 'package:flutter/material.dart';
import 'package:playstation_app_store/consoles.dart';
import 'package:playstation_app_store/accessories.dart';

class Controllers extends StatelessWidget {
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
                        MaterialPageRoute(builder: (context) => Accessories()),
                      );
                    },
                  ),
                ),
                PopupMenuItem(
                  child: ListTile(
                    title: Text('My Account'),
                    onTap: () {/* Write listener code here */},
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
        body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.all(24),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {/* Write listener code here */},
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              ExactAssetImage('assets/images/MidnightBlue.jpg'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Midnight Blue',
                          style: TextStyle(
                              color: Colors.indigo[900],
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      width: 300.0,
                      height: 200.0,
                      padding: EdgeInsets.all(20.0),
                      margin: EdgeInsets.all(20.0),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {/* Write listener code here */},
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/images/MagmaRed.jpg'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Magma Red',
                          style: TextStyle(
                              color: Colors.indigo[900],
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      width: 300.0,
                      height: 200.0,
                      padding: EdgeInsets.all(20.0),
                      margin: EdgeInsets.all(20.0),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {/* Write listener code here */},
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              ExactAssetImage('assets/images/GlacierWhite.jpg'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Glacier White',
                          style: TextStyle(
                              color: Colors.indigo[900],
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      width: 300.0,
                      height: 200.0,
                      padding: EdgeInsets.all(20.0),
                      margin: EdgeInsets.all(20.0),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
