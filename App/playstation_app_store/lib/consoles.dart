import 'package:flutter/material.dart';

class Consoles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("PlayStation"),
          leading: GestureDetector(
            child: PopupMenuButton(
              offset: Offset(0, 55),
              icon: Icon(Icons.menu),
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                PopupMenuItem(
                  child: ListTile(
                    title: Text('Consoles'),
                    onTap: () {/* Write listener code here */},
                  ),
                ),
                PopupMenuItem(
                  child: ListTile(
                    title: Text('Accessories'),
                    onTap: () {/* Write listener code here */},
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
                          image: ExactAssetImage('assets/images/PS4.jpg'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'PlayStation 4',
                          style: TextStyle(
                              color: Colors.blue,
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
                          image: ExactAssetImage('assets/images/PS4Slim.jpg'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'PlayStation 4 Slim',
                          style: TextStyle(
                              color: Colors.blue,
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
                          image: ExactAssetImage('assets/images/PS4Pro.jpg'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'PlayStation 4 Pro',
                          style: TextStyle(
                              color: Colors.blue,
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
