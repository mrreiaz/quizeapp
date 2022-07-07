import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex += 1;  
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite color ?',
      ' Whate is favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Quize App")),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Ans 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Ans 2'),
              onPressed: () => print("object"),
            ),
            RaisedButton(
              child: Text('Ans 2'),
              onPressed: () {
                print("object");
              },
            ),
          ],
        ),
      ),
    );
  }
}
