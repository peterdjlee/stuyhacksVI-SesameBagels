import 'package:awear/movement.dart';
import 'package:awear/pages/picture_page.dart';
import 'package:flutter/material.dart';

class PictureList extends StatelessWidget {
  final Movement currentMovement;

  PictureList(this.currentMovement);

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new FlatButton(
          padding: const EdgeInsets.only(left: 0.0, right: 0.0),
          child: new Image.asset(
            currentMovement.movementPicPaths[0],
            width: 75.0,
            height: 75.0,
            fit: BoxFit.contain,
          ),
          onPressed: () {
//            var route = new MaterialPageRoute(
//                builder: (BuildContext context) =>
//                new PicturePage()
//            );
//            Navigator.of(context).push(route);
          },
        ),
        new FlatButton(
          padding: const EdgeInsets.only(left: 0.0, right: 0.0),
          child: new Image.asset(
            currentMovement.movementPicPaths[1],
            width: 75.0,
            height: 75.0,
            fit: BoxFit.contain,
          ),
          onPressed: () {
//            var route = new MaterialPageRoute(
//                builder: (BuildContext context) =>
//                new PicturePage()
//            );
//            Navigator.of(context).push(route);
          },
        ),
        new FlatButton(
          padding: const EdgeInsets.only(left: 0.0, right: 0.0),
          child: new Image.asset(
            currentMovement.movementPicPaths[2],
            width: 75.0,
            height: 75.0,
            fit: BoxFit.contain,
          ),
          onPressed: () {
//            var route = new MaterialPageRoute(
//                builder: (BuildContext context) =>
//                new PicturePage()
//            );
//            Navigator.of(context).push(route);
          },
        ),
        new FlatButton(
          padding: const EdgeInsets.only(left: 0.0, right: 0.0),
          child: new Image.asset(
            currentMovement.movementPicPaths[3],
            width: 75.0,
            height: 75.0,
            fit: BoxFit.contain,
          ),
          onPressed: () {
//            var route = new MaterialPageRoute(
//                builder: (BuildContext context) =>
//                new PicturePage()
//            );
//            Navigator.of(context).push(route);
          },
        ),
      ],
    );
  }
}
