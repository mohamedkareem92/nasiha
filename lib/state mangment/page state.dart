
import 'package:nasiha/model_advise/advice%20date.dart';
import 'package:nasiha/model_advise/user%20data.dart';


enum userInterface_state{ loading,loaded,connectionError}

class PageState  {

    static List<Advice> advices = [];
      static userInterface_state pageState;
    static String error;


 static  void getAdvise(updateUIState(newUIState)){
  try {
    if(advices.isNotEmpty){
      pageState = userInterface_state.loaded;
      updateUIState(pageState);                       //?
      return;
    }
    pageState = userInterface_state.loading;

    //Code for simulating the delay [getting advices data].
    Future.delayed(
           Duration( seconds: 5),
          (){
             /*dummy data*/
             User u = User('mohamed','images/tt.png');
             Advice a =new Advice(u, 'jjjj', 'images/tt.png');
             advices.add(a); pageState = userInterface_state.loaded;
             },//?
    );
    } // try
  catch (e) {
    pageState = userInterface_state.connectionError;
    error = "Something happened";
  } // catch
  finally{
    updateUIState(pageState);
  }
  }// get advise
  }

