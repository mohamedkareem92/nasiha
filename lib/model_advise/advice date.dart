import 'user data.dart';
import 'comment data.dart';

class Advice {
  String advice;
  String adviceImage;
  User adviceCreator;
  List<Comment>comments;
  int likeNumber;
  Advice(this.adviceCreator,this.advice,this.adviceImage,);

}
