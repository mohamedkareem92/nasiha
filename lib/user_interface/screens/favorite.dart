
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  @override
  _IsFavoriteState createState() => _IsFavoriteState();
}

class _IsFavoriteState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Center(child: Text('Favorite',style:TextStyle(color:Colors.black,fontSize:40,fontWeight: FontWeight.bold))),
    );
  }
}
