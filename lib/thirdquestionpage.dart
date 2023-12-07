import 'package:flutter/material.dart';
import 'package:quizapp/resultpage.dart';
class ThirdPage extends StatefulWidget {
  ThirdPage({required this.mark});
  int mark=0;

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  bool  status=false;
  bool check=false;
  var answer="";
  @override
  Widget build(BuildContext context) {
    print(widget.mark);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("QUIZ")),
        body: Column(
          children: [Text("Which is the capital pf kerala",style: TextStyle(color: Colors.black,fontSize: 40),),
            GestureDetector(
                child: Container(
                    height: 50,
                    width: 200,
                    child: Center(child: Text("Wayanad",style: TextStyle(fontSize: 40,color: Colors.black))),

                    decoration: BoxDecoration(color: answer=="Wayanad"?Colors.red:Colors.grey,
                        borderRadius: BorderRadius.circular(30)
                    )
                ),
                onTap: (){
                  setState(() {
                    answer="Wayanad";
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
                child: Center(child: Text("Idukki",style: TextStyle(fontSize: 40,color: Colors.black))),

                decoration: BoxDecoration(color:answer=="Idukki"? Colors.red:Colors.grey,
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
                  answer="Idukki";
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
                  child: Center(child: Text("Kottayam",style: TextStyle(fontSize: 40,color: Colors.black))),

                  decoration: BoxDecoration(color:answer=="Kottayam"?Colors.red:Colors.grey,
                      borderRadius: BorderRadius.circular(30)
                  )
              ),
              onTap: (){
                setState(() {
                  answer="Kottayam";
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
                  child: Center(child: Text("Trivandrum",style: TextStyle(fontSize: 40,color: Colors.black))),

                  decoration: BoxDecoration(color:answer=="Trivandrum"?Colors.green:Colors.grey,
                      borderRadius: BorderRadius.circular(30)
                  )
              ),
              onTap: (){
                setState(() {
                  answer="Trivandrum";
                });
              },
            ),
            SizedBox(
              height: 50,
            ),
            answer!=""?
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => ResultPage(mark: answer=="Trivandrum"?widget.mark+10:widget.mark)));
            }
                , child:Text("Next page")):Container()



          ],

        ),
      ),
    );
  }
}
