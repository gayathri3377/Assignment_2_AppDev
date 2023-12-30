import 'package:flutter/material.dart';
import 'package:assignment_one_appdev/constants.dart';
import 'package:assignment_one_appdev/check_box.dart';
import 'package:assignment_one_appdev/third_screen.dart';

class SecondScreen extends StatefulWidget {
  // Constructor for SecondScreen
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  // List of strings representing the current state of fruits
  List<String> currentState = Constants.fruitsMap.keys.toList();

  // Title for the AppBar
  String appBarTitle = 'F r u i t s';

  @override
  Widget build(BuildContext context) {
    // Scaffold provides the basic structure of the visual interface
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle,style:TextStyle(color: Colors.white),),
        centerTitle:true,backgroundColor:Colors.lightGreen
      ,elevation: 20,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Expanded(
            child:ListView.builder(

              itemCount: currentState.length,
              itemBuilder:(context, index){

                return CustomCheckBox(objectName: currentState[index]);
              }
            )
          ),

          ElevatedButton(

            onPressed: () {
              // Navigate to the ThirdScreen when the button is pressed
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ThirdScreen()));
            },style:ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreen,),
            child: const Text('Next', style: TextStyle(color: Colors.white)),
          ),
        ]

    )
    );}
}