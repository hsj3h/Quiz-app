import 'package:flutter/material.dart';
import 'package:quizapp/resultpage.dart';
import 'package:quizapp/thirdquestionpage.dart';
class Secondpage extends StatefulWidget {
  Secondpage({required this.mark});
int mark=0;

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  bool  status=false;
  bool check=false;
  var answer="";
  @override
  Widget build(BuildContext context) {
    print(widget.mark);
    // for getting result in console
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("QUIZ")),
        body: Column(
          children: [Text("which is the national animal of india",style: TextStyle(color: Colors.black,fontSize: 40),),
            GestureDetector(
                child: Container(
                    height: 50,
                    width: 200,
                    child: Center(child: Text("Elephant",style: TextStyle(fontSize: 40,color: Colors.black))),

                    decoration: BoxDecoration(color: answer=="Elephant"?Colors.red:Colors.grey,
                        borderRadius: BorderRadius.circular(30)
                    )
                ),
                onTap: (){
                  setState(() {
                    answer="Elephant";
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
                child: Center(child: Text("Lion",style: TextStyle(fontSize: 40,color: Colors.black))),

                decoration: BoxDecoration(color:answer=="Lion"? Colors.red:Colors.grey,
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
                  answer="Lion";
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
                  child: Center(child: Text("Monkey",style: TextStyle(fontSize: 40,color: Colors.black))),

                  decoration: BoxDecoration(color:answer=="Monkey"?Colors.red:Colors.grey,
                      borderRadius: BorderRadius.circular(30)
                  )
              ),
              onTap: (){
                setState(() {
                  answer="Monkey";
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
                  child: Center(child: Text("Tiger",style: TextStyle(fontSize: 40,color: Colors.black))),

                  decoration: BoxDecoration(color:answer=="Tiger"?Colors.green:Colors.grey,
                      borderRadius: BorderRadius.circular(30)
                  )
              ),
              onTap: (){
                setState(() {
                  answer="Tiger";
                });
              },
            ),
            SizedBox(
              height: 50,
            ),
            answer!=""?
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => ThirdPage(mark:answer=="Tiger"?widget.mark+10:widget.mark)));
            }
                , child:Text("Next page")):Container()



          ],

        ),
      ),
    );
  }
}
