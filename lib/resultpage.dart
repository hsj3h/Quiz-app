import 'package:flutter/material.dart';
import 'package:quizapp/homepage.dart';
class ResultPage extends StatefulWidget {
ResultPage({required this.mark});
int mark=0;
  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("You got ${widget.mark} ",style: TextStyle(fontSize: 50,color: Colors.black))),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>HomePage()));
            },
                child: Text("Try again"))
          ],
        ),

      ),

    );
  }
}
