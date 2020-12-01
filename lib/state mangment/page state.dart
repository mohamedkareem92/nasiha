import 'package:nasiha/model_advise/advice%20date.dart';
import 'package:nasiha/model_advise/user%20data.dart';

enum UerInterfaceState { loading, loaded, connectionError }

class PageState {
  static List<Advice> advices = [];
  static UerInterfaceState pageState;
  static String error;

  static void getAdvise(updateUIState) {
    try {
      if (advices.isNotEmpty) {
        pageState = UerInterfaceState.loaded;
        updateUIState(pageState); //?
        return;
      }
      pageState = UerInterfaceState.loading;

      //Code for simulating the delay [getting advices data].
      Future.delayed(
        Duration(seconds:2),
        () {
          /*dummy data*/
          User u = User('mohamed gomaa', 'images/55.jpg');
          Advice a = new Advice(u,'الحمد لله رب العالمين','images/yy.jpg');
          advices.add(a);
          User u1 = User('mohamed gomaa', 'images/55.jpg');
          Advice a1 = new Advice(u,'الحمد لله رب العالمين','images/yy.jpg');
          advices.add(a1);
          User u2 = User('mohamed gomaa', 'images/55.jpg');
          Advice a2 = new Advice(u,'الحمد لله رب العالمين','images/yy.jpg');
          advices.add(a2);


          pageState = UerInterfaceState.loaded;
          updateUIState(pageState);
        }, //?
      );
    } // try
    catch (e) {
      pageState = UerInterfaceState.connectionError;
      error = "Something happened";
    } // catch
     finally {
      updateUIState(pageState);
    }
  } // get advise
}
