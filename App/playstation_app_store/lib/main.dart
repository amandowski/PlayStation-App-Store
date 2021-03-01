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
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Text('The question'),
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
