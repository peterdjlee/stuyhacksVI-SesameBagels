import 'package:awear/issue.dart';

class Movement {
  final String movementTitle;
  final Issue movementIssueOne;
  final Issue movementIssueTwo;
  String movementPicPath;
  final String movementDescription;
  final String movementContact;

  List<String> movementPicPaths = new List<String>();

  Movement(this.movementTitle, this.movementIssueOne, this.movementIssueTwo, this.movementPicPath, this.movementDescription, this.movementContact) {
    for (int i = 0; i < 4; i++) {
      movementPicPaths.add('assets/images/' + movementPicPath + '$i.jpg');
    }
    movementPicPaths.shuffle();
  }
}