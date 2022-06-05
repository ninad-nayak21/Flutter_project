import 'package:flutter/material.dart';

class BC extends StatefulWidget {
  BC({Key? key,required this.ans}) : super(key: key);
  double ans;

  @override
  State<BC> createState() => _BCState();
}

class _BCState extends State<BC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(backgroundColor: Colors.deepPurpleAccent,
          title: Text("CONSTANT FINDER"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 350,
              width: 300,
              decoration:BoxDecoration(
                color: Colors.deepPurpleAccent, borderRadius: BorderRadius.circular((30)),

              ),
              child: Column(
                children: [
                  Padding(padding: const EdgeInsets.all(30.0),
                    child: Text("The Value of constant is ${widget.ans}"+" m^2 kg s^-2 K^-1",
                      style: TextStyle(color:Colors.white,fontSize: 30,fontStyle: FontStyle.italic),),
                  ),

                ],
              ),

            ),
            SizedBox(height: 100,),



            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Center(
                child: Container(
                  color: Colors.blue,
                  height:75,
                  width:200,
                  child: Center(child:Text("EVALUATE AGAIN",
                    style: TextStyle(color:Colors.white,fontSize: 20),)),
                ),
              ),
            )
          ],
        )
    );
  }
}
