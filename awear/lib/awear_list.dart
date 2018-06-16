import 'package:flutter/material.dart';

class AwearList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final itemCount = 10;
    List<String> movements = new List<String>();

    //HARD CODE MOVEMENTS
    movements.add('PussyHat');
    movements.add('BobHaircut');
    movements.add('WomenWearJeans');
    movements.add('ThisMovement');
    movements.add('ThatMovement');
    movements.add('ThoseMovements');

    List<String> issues = new List<String>();
    issues.add('#women\'s rights');

    return new ListView.builder(
        itemCount: movements.length,
        itemBuilder: (context, index) {
          return new Card(
              child: new Container(
                padding: new EdgeInsets.all(32.0),
                child: new Column(
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text(
                            movements[index],
                          style: new TextStyle(
                            fontFamily: 'PlayfairDisplay',
                            fontSize: 30.0,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        new Icon(
                          Icons.image,
                          size: 75.0,
                        ),
                      ],
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          '#womensrights',
                          style: new TextStyle(
                            fontFamily: 'PlayfairDisplay',
                            color: Colors.grey,
                            fontSize: 20.0,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
          );
        });
  }
}
