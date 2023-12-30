import 'package:flutter/material.dart';
import 'constants.dart';

class CustomCheckBox extends StatefulWidget{
  final String objectName;
  const CustomCheckBox({Key? key,required this.objectName}):super(key:key);


  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool ifClicked = false;

  @override
  Widget build(BuildContext context) {
    final correspondingPrice = Constants.fruitsMap.containsKey(
        widget.objectName)
        ? Constants.fruitsMap[widget.objectName]
        : Constants.vegetablesMap.containsKey(widget.objectName)
        ? Constants.vegetablesMap[widget.objectName]
        : 'Error';
    return

        Row(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment:CrossAxisAlignment.center ,


        children: [
          Container(
         child:Checkbox(value: ifClicked, onChanged: (value) {


            setState(() {
              if (value != null) {
                ifClicked = value;
              }
              if (value == true) {
                DataStore.setMapValue(widget.objectName);
              }
            });
          })),
        Container(
        child: Text(widget.objectName,style: const TextStyle(color: Colors.black,))),
          Container(
          child: Text(correspondingPrice.toString(),style:const TextStyle(color: Colors.black,))
          )],



    );

  }
}
