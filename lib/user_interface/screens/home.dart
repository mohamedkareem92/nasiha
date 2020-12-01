import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nasiha/model_advise/advice%20date.dart';
import 'package:nasiha/state%20mangment/page%20state.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  UerInterfaceState currentState = UerInterfaceState.loading;

  PageState p;
  List<Advice> advices;

  updateList(UerInterfaceState newUIState) {
    setState(() {
      currentState = newUIState;
    });
  }

  @override
  void initState() {
    super.initState();
    print(currentState);
  }

  @override
  Widget build(BuildContext context) {
    if (currentState == UerInterfaceState.loading) {
      PageState.getAdvise(updateList);
      return Center(child: CircularProgressIndicator());
    }
    if (currentState == UerInterfaceState.loaded) {
      return buildUI();
    }
    if (currentState == UerInterfaceState.connectionError) {
      return Container(
        child: Text("error"),
      );
    }
  } // build

  Widget buildUI() {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 60, left: 10, right: 10),
        child: buildAdviceList(PageState.advices),
      ),
    );
  }// build method

  Widget buildAdviceList(List<Advice> advices) {
    return ListView.builder(
      itemCount: advices.length,
      itemBuilder: (context, index) => Card(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 36.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                        AssetImage(advices[index].adviceCreator.userImage),
                  ),
                  Text(
                    advices[index].adviceCreator.userName,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  Text('Mon 22 Nov 20,3:22 pm'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.topRight,
              child: Text(
                advices[index].advice,
                maxLines: 10,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: Image.asset(
                advices[index].adviceImage,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(FontAwesomeIcons.comment),
                Icon(FontAwesomeIcons.flag),
                Icon(FontAwesomeIcons.thumbsDown),
                Icon(FontAwesomeIcons.thumbsUp),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
        color: Colors.grey[300],
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
} // class
///////////////////////////////////////////////////////////////////////////////
