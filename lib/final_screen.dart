import 'package:flutter/material.dart';
import 'package:assignment_one_appdev/constants.dart';

class FinalScreen extends StatefulWidget{
  const FinalScreen({Key? key}):super(key:key);
  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen>{
  final array=DataStore.getArray();
  int finalPrice=0;
  @override
  void initState(){
    super.initState();
    for(int i=0;i<array.length;i++){
      finalPrice+=DataStore.getPrice(array[i]);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('B i l l',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        elevation: 10,
      ),
      body: Column(
        children:[
         const Text('Items Summary',style:TextStyle(color:Colors.black)),
         Expanded(child: ListView.builder(
           itemCount: array.length,
           itemBuilder: (context,index){
             return Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text(array[index],style:const TextStyle(color: Colors.black)),
                 Text(DataStore.getPrice(array[index]).toString(),style:const TextStyle(color: Colors.black))
               ],
             );
           },

         )),
          Container(
            padding: EdgeInsetsDirectional.all(100),

              child: ElevatedButton(onPressed: () {
              }, style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen),child: const Text('Epay', style: TextStyle(color: Colors.white),


              ),
              )),
          Container(


            height:50,
            padding: EdgeInsetsDirectional.all(10),
            decoration: BoxDecoration(color: Colors.lightGreen),

            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Text('Total',style:TextStyle(color: Colors.white)),
                Text(finalPrice.toString(),style:TextStyle(color:Colors.white))
                ],
            ),
          ),

        ],

      ),
    );

  }

}