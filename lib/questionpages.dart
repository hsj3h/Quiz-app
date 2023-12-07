import 'package:flutter/material.dart';
import 'package:quizapp/secondquestionpage.dart';
class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  bool  status=false;
  bool check=false;
  var answer="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: Scaffold(
  appBar: AppBar(title: Text("QUIZ")),
  body: Column(
    children: [Text("How many colors are there in rainbow?",style: TextStyle(color: Colors.black,fontSize: 40),),
      GestureDetector(
        child: Container(
          height: 50,
          width: 200,
          child: Center(child: Text("8",style: TextStyle(fontSize: 40,color: Colors.black))),

          decoration: BoxDecoration(color: answer=="8"?Colors.red:Colors.grey,
            borderRadius: BorderRadius.circular(30)
          )
        ),
        onTap: (){
          setState(() {
            answer="8";
          });
        }


      ),
      SizedBox(
        height: 10,
      ),
      GestureDetector(
        child: Container(
            height: 50,
            width: 200,
            child: Center(child: Text("7",style: TextStyle(fontSize: 40,color: Colors.black))),

            decoration: BoxDecoration(color:answer=="7"? Colors.green:Colors.grey,
                borderRadius: BorderRadius.circular(30),
            ),

        ),
        // onTap: (){
        //   if(check==true){
        //     setState(() {
        //       check==false;
        //
        //     });
        //   }else{
        //     setState(() {
        //       check=true;
        //     });
        //   }
        // },
        onTap:
        (){
         setState(() {
           answer="7";
         });

        },
      ),
      SizedBox(
        height: 10,
      ),
      GestureDetector(
        child: Container(
            height: 50,
            width: 200,
            child: Center(child: Text("4",style: TextStyle(fontSize: 40,color: Colors.black))),

            decoration: BoxDecoration(color:answer=="4"?Colors.red:Colors.grey,
                borderRadius: BorderRadius.circular(30)
            )
        ),
        onTap: (){
          setState(() {
            answer="4";
          });
        },
      ),
      SizedBox(
        height: 10,
      ),
      GestureDetector(
        child: Container(
            height: 50,
            width: 200,
            child: Center(child: Text("3",style: TextStyle(fontSize: 40,color: Colors.black))),

            decoration: BoxDecoration(color:answer=="3"?Colors.red:Colors.grey,
                borderRadius: BorderRadius.circular(30)
            )
        ),
        onTap: (){
          setState(() {
            answer="3";
          });
        },
      ),
      SizedBox(
        height: 50,
      ),
      answer!=""?
      ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder:(context) => Secondpage(mark:answer=="7"?10:0,)));
      }
          , child:Text("Next page")):Container()



    ],

  ),
),
    );
  }
}
