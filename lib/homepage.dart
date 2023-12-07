import 'package:flutter/material.dart';
import 'package:quizapp/questionpages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "QUIZ",
            style: TextStyle(color: Colors.black45, fontSize: 30),
          ),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuestionPage()));
              },
              child: Text("Start")),
        ),
      ),
    );
  }
}
