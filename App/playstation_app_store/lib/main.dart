import 'package:flutter/material.dart';
import 'package:playstation_app_store/consoles.dart';
import 'package:playstation_app_store/accessories.dart';
import 'package:playstation_app_store/account.dart';

void main() => runApp(PlayStationApp());

class PlayStationApp extends StatelessWidget {
  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];
  var questionIndex = 0;
  void answerQuestion() {
    questionIndex += 1;
    print('Answer ' + questionIndex.toString() + ' Selected');
  }

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
          body: Column(
            children: [
              Text(
                "Power to the Players",
                style: TextStyle(
                  fontSize: 35.0,
                ),
              )
            ],
          )),
    );
  }
}
