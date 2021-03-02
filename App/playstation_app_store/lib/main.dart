import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget {
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
      home: Scaffold(
          appBar: AppBar(
<<<<<<< HEAD
            title: Text('PlayStation',
                style: TextStyle(
                  fontSize: 30.0,
                )),
            centerTitle: true,
            backgroundColor: Colors.indigo[900],
=======
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
>>>>>>> parent of 78cd6b9 (added console screen)
          ),
          body: Column(
            children: [
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Answer 2 Selected'),
              ),
              RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: () {
                    print('Answer 3 Selected');
                  }),
            ],
          )),
    );
  }
}
