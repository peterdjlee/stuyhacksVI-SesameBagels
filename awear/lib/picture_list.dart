import 'package:flutter/material.dart';

class PictureList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new FlatButton(
          padding: const EdgeInsets.only(left: 0.0, right: 0.0),
          child: new Icon(
            Icons.image,
            size: 75.0,
          ),
          onPressed: () {
            //TODO: FILL IN ONPRESSED
          },
        ),
        new FlatButton(
          padding: const EdgeInsets.only(left: 0.0, right: 0.0),
          child: new Icon(
            Icons.image,
            size: 75.0,
          ),
          onPressed: () {
            //TODO: FILL IN ONPRESSED
          },
        ),
        new FlatButton(
          padding: const EdgeInsets.only(left: 0.0, right: 0.0),
          child: new Icon(
            Icons.image,
            size: 75.0,
          ),
          onPressed: () {
            //TODO: FILL IN ONPRESSED
          },
        ),
        new FlatButton(
          padding: const EdgeInsets.only(left: 0.0, right: 0.0),
          child: new Icon(
            Icons.image,
            size: 75.0,
          ),
          onPressed: () {
            //TODO: FILL IN ONPRESSED
          },
        ),
      ],
    );
  }
}
