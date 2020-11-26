import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nasiha/state%20mangment/page%20state.dart';

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  //
  // userInterface_state currentState=userInterface_state.loading;
  // @override
  // void initState() {
  //   super.initState();
  //   print(currentState);
  //   PageState.getAdvise((newUIState) { setState(() { currentState=newUIState; });});
  // }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Add',style:TextStyle(color:Colors.black,fontSize:40,fontWeight: FontWeight.bold))),
    );
  }
}
