import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:nasiha/user_interface/screens/add.dart';
import 'package:nasiha/user_interface/screens/favorite.dart';
import 'package:nasiha/user_interface/screens/home.dart';
import 'package:nasiha/user_interface/screens/profile.dart';
import 'package:nasiha/user_interface/screens/settings.dart';

class MainContainer extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        resizeToAvoidBottomInset: false,
        appBar: new AppBar(backgroundColor: Color(0xff27AC9B), actions: [
          new Image.asset("images/2.png"),
          SizedBox(
            width: 20.0,
          )
        ]),
        body: pages[currentIndex],
        bottomNavigationBar: creatBottomBar(),

    );
  } // end of build method

////////////////////////////////////////////////////////////////////////////////
  Widget creatBottomBar() {
    return CurvedNavigationBar(
      height: 70.0,
      backgroundColor: Colors.white,
      buttonBackgroundColor: Color(0xff77DECD), //Colors.orange[900],
      color: Color(0xffC9C9C9),
      items: <Widget>[
        creatIcon(Icons.settings),
        creatIcon(Icons.favorite_border),
        creatIcon(Icons.add),
        creatIcon(Icons.person),
        creatIcon(Icons.home),
      ],
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      index: 2,
      animationCurve: Curves.bounceInOut,
      animationDuration: Duration(microseconds: 200),
    );
  } //creatBottomBar

  Widget creatIcon(IconData icon) {
    return IconButton(
      icon: Icon(
        icon,
        size: 40,
        color: Color(0xff27AC9B),
      ),
    );
  }

///////////////////////////////
  int currentIndex = 2;
  final pages = [Setting(), Favorites(), Add(), Profile(), Home()];
} // class
