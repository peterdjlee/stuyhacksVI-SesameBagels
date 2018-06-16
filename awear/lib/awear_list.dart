import 'package:flutter/material.dart';

class AwearList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Movement> movements = new List<Movement>();

    //HARD CODE MOVEMENTS
    movements.add(new Movement('Pussy Hat','#WomensRights','#WomensMarch',''));
    movements.add(new Movement('Bob Haircut','#WhoseHaircut','#BeautyStandards',''));
    movements.add(new Movement('Blazers','#GenderRoles','',''));
    movements.add(new Movement('No Bra','#FreeTheNipple','',''));

    return new ListView.builder(
        itemCount: movements.length,
        itemBuilder: (context, index) {
          return new Card(
              child: new Container(
                padding: new EdgeInsets.all(16.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                        new FlatButton(
                          padding: const EdgeInsets.only(left:16.0, right:16.0, top:0.0),
                          child: new Text(
                            movements[index].movementTitle,
                            style: new TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 30.0,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          onPressed: () {
                            //TODO: FILL IN ONPRESSED
                          },
                        ),
                        new Row(
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
                              padding: const EdgeInsets.only(left: 0.0, right: 0.0),                              child: new Icon(
                                Icons.image,
                                size: 75.0,
                              ),
                              onPressed: () {
                                //TODO: FILL IN ONPRESSED
                              },
                            ),
                            new FlatButton(
                              padding: const EdgeInsets.only(left: 0.0, right: 0.0),                              child: new Icon(
                              Icons.image,
                              size: 75.0,
                            ),
                              onPressed: () {
                                //TODO: FILL IN ONPRESSED
                              },
                            ),
                          ],
                        ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new FlatButton(
                          padding: const EdgeInsets.only(left: 16.0, right: 3.0),
                          child: new Text(
                            movements[index].movementIssueOne,
                            style: new TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              color: Colors.grey,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          onPressed: () {
                            //TODO: FILL IN ONPRESSED
                          },
                        ),
                        new FlatButton(
                          child: new Text(
                            movements[index].movementIssueTwo,
                            style: new TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              color: Colors.grey,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          onPressed: () {
                            //TODO: FILL IN ONPRESSED
                          },
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

class Movement {
  final String movementTitle;
  final String movementIssueOne;
  final String movementIssueTwo;
  String movementPicPath = "";

  Movement(this.movementTitle, this.movementIssueOne, this.movementIssueTwo, this.movementPicPath);


}
