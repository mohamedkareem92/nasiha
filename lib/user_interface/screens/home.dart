import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nasiha/model_advise/advice%20date.dart';
import 'package:nasiha/model_advise/user%20data.dart';
import 'package:nasiha/state%20mangment/page%20state.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {

    // PageState p;
   // userInterface_state currentState=userInterface_state.loading;

    User u;
    PageState p;
    Advice a;
    List<Advice> advices;
   //  advices.add(a);
   // // PageState p =new PageState();
   //  // p.getAdvise();
    userInterface_state currentState=userInterface_state.loading;
   // //PageState p;


 @override
 void initState() {
   super.initState();
   print(currentState);
   PageState.getAdvise((newUIState) {
     setState(() { currentState=newUIState;
     });});
  // if(currentState==userInterface_state.loaded){advices.add[PageState.getAdvise((newUIState))];}
  }

  @override
  Widget build(BuildContext context) {
   return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor:Color(0xffFFFFFF),
      resizeToAvoidBottomInset: false,
       body:Container(
          height: MediaQuery.of(context).size.height,
     width: MediaQuery.of(context).size.width,
     padding: EdgeInsets.only(top:60,left:10,right: 10),
     child:ListView(
       children: <Widget>[
         ListTile(
           leading: CircleAvatar(
             radius: 36.0,
             backgroundColor: Colors.transparent,
             backgroundImage: AssetImage(u.userImage),
           ),
           title: Text(u.userName,style:TextStyle(fontSize:30,fontWeight: FontWeight.w700),),
           subtitle: Text('Mon 22 Nov 20,3:22 pm'),
         ),
         Padding(
           padding: const EdgeInsets.only(top:20.0,left:10.0,right: 10.0),
           child: Text(a.advice),
         ),
         Padding(
           padding: const EdgeInsets.only(top:10.0,left: 10,right: 10),
           child: Container(
             height: MediaQuery.of(context).size.height/4,
             width: MediaQuery.of(context).size.width-8,
             decoration: new BoxDecoration(
               image: new DecorationImage(
                 image: new ExactAssetImage(a.adviceImage),
                 fit: BoxFit.cover,
               ),
             ),
           ),
         ),
         SizedBox(height: 30,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Icon(FontAwesomeIcons.comment),
             Icon(FontAwesomeIcons.flag),
             Icon(FontAwesomeIcons.thumbsDown),
             Icon(FontAwesomeIcons.thumbsUp),
           ],
         ),
       ],
      ),
     ),
      ),
    );
  }// build
}// class
///////////////////////////////////////////////////////////////////////////////
