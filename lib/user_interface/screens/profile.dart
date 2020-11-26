import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Center(child: Text('profile',style:TextStyle(color:Colors.black,fontSize:40,fontWeight: FontWeight.bold))),
    );
  }
}
