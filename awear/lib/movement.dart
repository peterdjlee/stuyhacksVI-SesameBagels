class Movement {
  final String movementTitle;
  final String movementIssueOne;
  final String movementIssueTwo;
  String movementPicPath;
  List<String> movementPicPaths = new List<String>();

  Movement(this.movementTitle, this.movementIssueOne, this.movementIssueTwo, this.movementPicPath) {
    for (int i = 0; i < 4; i++) {
      movementPicPaths.add('assets/images/' + movementPicPath + '$i.jpg');
    }
    movementPicPaths.shuffle();
  }
}