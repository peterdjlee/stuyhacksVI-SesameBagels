import 'package:awear/movement.dart';
import 'package:awear/picture_list.dart';
import 'package:flutter/material.dart';

class AwearList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Movement> movements = new List<Movement>();

    //HARD CODE MOVEMENTS
    movements.add(new Movement('Pussy Hat','#WomensRights','#WomensMarch','pussyhat'));
    movements.add(new Movement('BLM Shirts','#BlackLivesMatter','#Racism','blmshirts'));
    movements.add(new Movement('Bob Haircut','#GenderRoles','','bobhaircut'));
    movements.add(new Movement('Bureo Glasses','#RecycledMaterials','','bureoglasses'));
    movements.add(new Movement('Vietnam Arm Bands','#War','','vietnamarmbands'));

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
                            padding: const EdgeInsets.only(left:0.0, right:16.0, top:0.0, bottom: 5.0),
                            child: new Text(
                              movements[index].movementTitle,
                              style: new TextStyle(
                                fontFamily: 'PlayfairDisplay',
                                fontSize: 30.0,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushNamed('/MovementPage');
                            },
                          ),
                          new PictureList(movements[index]),
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              new FlatButton(
                                padding: const EdgeInsets.only(left: 2.0, right: 2.0),
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
                                    Navigator.of(context).pushNamed('/IssuePage');
                                  }),
                              new FlatButton(
                                padding: const EdgeInsets.only(left: 2.0, right: 2.0),
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
                                    Navigator.of(context).pushNamed('/IssuePage');
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
