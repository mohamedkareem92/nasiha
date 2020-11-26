
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IsFavorite extends StatefulWidget {
  @override
  _IsFavoriteState createState() => _IsFavoriteState();
}

class _IsFavoriteState extends State<IsFavorite> {
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Center(child: Text('Favorite',style:TextStyle(color:Colors.black,fontSize:40,fontWeight: FontWeight.bold))),
    );
  }
}
