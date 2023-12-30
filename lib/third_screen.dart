import 'package:flutter/material.dart';
import 'package:assignment_one_appdev/constants.dart';
import 'package:assignment_one_appdev/check_box.dart';
import 'package:assignment_one_appdev/final_screen.dart';


class ThirdScreen extends StatefulWidget{
  const ThirdScreen({super.key});
  @override
  State<StatefulWidget> createState() =>_SecondScreenState();

}

class _SecondScreenState  extends State<ThirdScreen>{
  List<String> currentState=Constants.vegetablesMap.keys.toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('V e g e t a b l e s',style:TextStyle(color: Colors.white)),backgroundColor:Colors.lightGreen,elevation: 20,centerTitle: true,

      ),
        body:Column(
        children:[
          Expanded(
            child:ListView.builder(
                itemCount: currentState.length,
                itemBuilder:(context,index) {
                  return CustomCheckBox(objectName: currentState[index]);
                }),
          ),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const FinalScreen()));
          },style:ElevatedButton.styleFrom(
            backgroundColor: Colors.lightGreen),
              child:const Text('Next', style: TextStyle(color: Colors.white),))
        ]
    )
    );
  }

}