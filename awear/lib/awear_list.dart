import 'package:flutter/material.dart';

class AwearList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return new Card(
              child: new Container(
                padding: new EdgeInsets.all(32.0),
                child: new Column(
                  children: <Widget>[
                    new Text('This is an item'),
                  ],
                ),
              )
          );
        });
  }
}
