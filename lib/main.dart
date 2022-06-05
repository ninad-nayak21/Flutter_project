import 'package:flutter/material.dart';
import 'package:newassignemt/Constant1.dart';
import 'package:newassignemt/Constant2.dart';
import 'package:newassignemt/Constant3.dart';
import 'package:newassignemt/Constant4.dart';
import 'package:newassignemt/Constant5.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

double height=150;
double weight=150;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("MEASUREMENT APP"),
        centerTitle: true,


      ),
      body: Center(


        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Container(
              color: Colors.black,
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(450, 80),
                  textStyle: TextStyle(fontSize: 34, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors.black, ),
                ),
                child: Text('Conversions'),
                onPressed: () {
                  setState((){
                    Navigator.push(context
                        , MaterialPageRoute(builder: (context)=>SecondScreen()));
                  });
                },
              ),

            ),

            Container(
              color: Colors.black,
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(450, 80),
                  textStyle: TextStyle(fontSize: 34, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                child: Text('Constants'),
                onPressed: () {
                  setState((){
                    Navigator.push(context
                        , MaterialPageRoute(builder: (context)=>SecondScreen2()));
                  });
                },
              ),

            ),
          ],




        ),


      ),
    );

  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}
String dropdownvalue1 = 'FROM';

// List of items in our dropdown menu
var items1 = [
  'FROM',
  'centimeter',
  'meter',
  'kilometer',
  'inch',
  'feet',
];

String dropdownvalue2 = 'TO';

// List of items in our dropdown menu
var items2 = [
  'TO',
  'centimeter',
  'meter',
  'kilometer',
  'inch',
  'feet',
];
class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      appBar: AppBar(
        backgroundColor:Colors.deepPurpleAccent,
        title: Text("Unit Converter",style: TextStyle(
          color: Colors.white,

        ),),centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
              child:Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPUDNrxftfm2gXAV8QXmQJWIHfOZaw431uEQ&usqp=CAU',),
              alignment: Alignment.topCenter,

            ),
            SizedBox(
              height:50,
            ),

            Text(
              'WELCOME TO THE UNIT CONVERTER!',
              style:TextStyle(
                fontSize: 50,
                fontWeight:FontWeight.bold,
                color:Colors.white54,
              ),
            ),


            SizedBox(
              height:100,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                DropdownButton(

                  // Initial Value
                  value: dropdownvalue1,

                  // Down Arrow Icon
                  icon: const Icon(Icons.arrow_drop_down),

                  // Array list of items
                  items: items1.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items,style:TextStyle(
                        fontSize: 30,
                        color:Colors.blue,
                      ),),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue1 = newValue!;
                    });
                  },
                ),

                SizedBox(
                  width:150,
                ),

                DropdownButton(

                  // Initial Value
                  value: dropdownvalue2,

                  // Down Arrow Icon
                  icon: const Icon(Icons.arrow_drop_down),

                  // Array list of items
                  items: items2.map((String items2) {
                    return DropdownMenuItem(
                      value: items2,
                      child: Text(items2,style:TextStyle(
                        fontSize: 30,
                        color:Colors.blue,
                      ),),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue2 = newValue!;
                    });
                  },
                ),


              ],
            ),

            SizedBox(
              height:100,
            ),

            TextButton(

              child:
              Container(
                height: 70,
                width: 200,
                color: Colors.blue,
                child: Center(child: Text("CONTINUE",
                  style:TextStyle(
                    fontSize: 25,
                    color:Colors.white,

                  ),

                ),

                ),
              ),


              onPressed:()
              {
                setState(() {

                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdScreen()));
                });
              },


            ),




          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}
double input=0,output=0;

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Unit Converter'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height:350,
              width: 300,
              decoration:BoxDecoration(
                color: Colors.deepPurpleAccent, borderRadius: BorderRadius.circular((30)),
              ),
              child: Column(
                children: [
                  Padding(padding: const EdgeInsets.all(30.0),
                    child: Text("Enter value in "+ dropdownvalue1+"\n${input.toStringAsFixed(2)}",
                        style: TextStyle(fontStyle: FontStyle.italic,
                            color:Colors.white,fontSize: 30)),
                  ),
                  Slider(
                    value: input,
                    max:1000,
                    min:0,
                    onChanged: (newValue){
                      setState((){
                        input=(newValue);
                        calci();

                      });
                    },
                  )

                ],
              ),

            ),

            GestureDetector(
              onTap: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Calculate()));
              },
              child:   Container(
                height: 70,
                width: 200,
                color: Colors.blue,
                child: Center(child: Text("Calculate",
                  style: TextStyle(color:Colors.white,fontSize: 30.0),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Calculate extends StatefulWidget {
  const Calculate({Key? key}) : super(key: key);

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Unit converter"),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,

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
                    child: Text("The Value in "+dropdownvalue2+" is  ${output.toStringAsFixed(4)}",
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
                  child: Center(child:Text("Recalculate",
                  style: TextStyle(color:Colors.white,fontSize: 30),)),
                ),
              ),
            )
          ],
        )
    );
  }
}

void calci(){
  if(dropdownvalue1=='centimeter')
    {if(dropdownvalue1=='centimeter')
    {output=input;}
      if(dropdownvalue2=='meter')
        {output=input*0.001;}
      else if(dropdownvalue2=='kilometer')
        {output=input*0.0001;}
        else if(dropdownvalue2=='inch'){
          output=input*0.3937;
      }
        else if(dropdownvalue2=='feet')
          {output=input*0.0328;          }
    }
  if(dropdownvalue1=='meter')
    {if(dropdownvalue1=='meter')
      {output=input;}
      if(dropdownvalue2=='centimeter')
    {output=input*100;}
    else if(dropdownvalue2=='kilometer')
    {output=input*0.001;}
    else if(dropdownvalue2=='inch'){
      output=input*39.37;
    }
    else if(dropdownvalue2=='feet')
    {output=input*3.28;          }}
  if(dropdownvalue1=='kilometer')
  {if(dropdownvalue1=='kilometer')
  {output=input;}
    if(dropdownvalue2=='centimeter')
    {output=input*10000;}
    else if(dropdownvalue2=='meter')
    {output=input*1000;}
    else if(dropdownvalue2=='inch'){
      output=input*39370.08;
    }
    else if(dropdownvalue2=='feet')
    {output=input*3280.84;          }
  }
  if(dropdownvalue1=='inch')
  {if(dropdownvalue1=='inch')
  {output=input;}
    if(dropdownvalue2=='centimeter')
    {output=input*2.54;}
    else if(dropdownvalue2=='meter')
    {output=input*0.0254;}
    else if(dropdownvalue2=='kilometer'){
      output=input*0.00254;
    }
    else if(dropdownvalue2=='feet')
    {output=input*0.0833;          }
  }
  if(dropdownvalue1=='feet')
  {if(dropdownvalue1=='feet')
  {output=input;}
    if(dropdownvalue2=='centimeter')
    {output=input*30.48;}
    else if(dropdownvalue2=='kilometer')
    {output=input*0.03048;}
    else if(dropdownvalue2=='meter'){
      output=input*0.3048;
    }
    else if(dropdownvalue2=='inch')
    {output=input*12;          }
  }

}



class SecondScreen2 extends StatefulWidget {
  const SecondScreen2({Key? key}) : super(key: key);

  @override
  State<SecondScreen2> createState() => _SecondScreen2State();
}
double ans=0;
class _SecondScreen2State extends State<SecondScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("CONSTANT FINDER"),
        centerTitle: true,


      ),
      body: Center(


        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Container(
              color: Colors.black,
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(450, 80),
                  textStyle: TextStyle(fontSize: 34, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors.black, ),
                ),
                child: Text('GRAVITAIONAL CONSTANT'),
                onPressed: () {
                  setState((){
                    Navigator.push(context
                        , MaterialPageRoute(builder: (context)=>GT(ans: 6.673E-7,)));
                  });
                },

              ),

            ),

            Container(
              color: Colors.black,
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(450, 80),
                  textStyle: TextStyle(fontSize: 34, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                child: Text("AVAGADRO'S CONSTANT" ),
                onPressed: () {
                  setState((){
                    Navigator.push(context
                        , MaterialPageRoute(builder: (context)=>AC(ans: 6.023E-23,)));
                  });
                },
              ),

            ),

            Container(
              color: Colors.black,
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(450, 80),
                  textStyle: TextStyle(fontSize: 34, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                child: Text("BOLTZMANN CONSTANT" ),
                onPressed: () {
                  setState((){
                    Navigator.push(context
                        , MaterialPageRoute(builder: (context)=>BC(ans: 1.38E-23,)));
                  });
                },
              ),

            ),
            Container(
              color: Colors.black,
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(450, 80),
                  textStyle: TextStyle(fontSize: 34, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                child: Text("PI CONSTANT" ),
                onPressed: () {
                  setState((){
                    Navigator.push(context
                        , MaterialPageRoute(builder: (context)=>PI(ans: 3.14)));
                  });
                },
              ),

            ),
            Container(
              color: Colors.black,
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(450, 80),
                  textStyle: TextStyle(fontSize: 34, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                child: Text("SPEED OF LIGHT" ),
                onPressed: () {setState((){
                  Navigator.push(context
                      , MaterialPageRoute(builder: (context)=>suiii(ans: 3.0E8,)));
                });},
              ),

            ),
          ],





        ),


      ),
    );
  }
}
