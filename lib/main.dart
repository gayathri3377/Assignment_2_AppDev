import 'package:flutter/material.dart';
import 'package:assignment_one_appdev/second_screen.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstScreen(),

    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child:Scaffold(


    body: Center(
        child: Column(
    mainAxisAlignment:MainAxisAlignment.center,
    crossAxisAlignment:CrossAxisAlignment.center ,
           children:[

      Container(
        child: ClipRRect(
            borderRadius: BorderRadius.circular(30),

          child: Image.asset('lib/pictures/Aadvifarmpic.jpg',)),

      ),

      const Text('Farm to Home Delivery....',style: TextStyle(fontSize: 30,color: Colors.black,fontStyle: FontStyle.italic),),
      Container(
        // height:100,
        // width:100,
        //
        padding: EdgeInsetsDirectional.all(50),
          child: ElevatedButton(

          onPressed:(){
            Navigator.of(context).push(MaterialPageRoute(builder:(context) => const SecondScreen()));
          }, style:ElevatedButton.styleFrom(
          backgroundColor: Colors.lightGreen,
      ),
          child: const Text('Start',style:TextStyle(color:Colors.white))),)

      ]

    )

    ),

    ),
    );

  }



}