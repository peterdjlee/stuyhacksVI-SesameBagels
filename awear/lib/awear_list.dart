import 'package:awear/issue.dart';
import 'package:awear/movement.dart';
import 'package:awear/pages/issue_page.dart';
import 'package:awear/pages/movement_page.dart';
import 'package:awear/picture_list.dart';
import 'package:flutter/material.dart';

class AwearList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Movement> movements = new List<Movement>();

    //HARD CODE MOVEMENTS
    movements.add(new Movement('Pussy Hat', new Issue('#WomensRights'), new Issue('#WomensMarch'),'pussyhat','Description not yet submitted.', 'Call a politician: City Council District 1 Margaret Chin (212) 587-3159'));
    movements.add(new Movement('BLM Shirts', new Issue('#BlackLivesMatter'), new Issue('#Racism'), 'blmshirts', 'This movement is connected to the larger story of Black Lives Matter. It is about wearing shirts that will spark everyday conversations about what the concept of BLM means, but it is also a chance for you to talk to your local politician about celebrating black leaders in your community, and calling your local police precinct to find out about the programs they have in place to train their officers.', 'Call a politician: City Council District 1 Margaret Chin (212) 587-3159'));
    movements.add(new Movement('Bob Haircut', new Issue('#GenderRoles'),new Issue(''),'bobhaircut','Description not yet submitted.', 'Call a politician: City Council District 1 Margaret Chin (212) 587-3159'));
    movements.add(new Movement('Bureo Glasses', new Issue('#RecycledMaterials'),new Issue(''),'bureoglasses','The environmental cost of fashion is often underestimated, and many of the products we use are energy and resource intensive to use. By wearing Bureo glasses, you can support a company that uses recycled products to create fashionable accessories. Support the movement. Sign the petition to help force fashion companies to be more transparent about their environmental footprint.', 'Call a politician: City Council District 1 Margaret Chin (212) 587-3159'));
    movements.add(new Movement('Vietnam Arm Bands', new Issue('#War'),new Issue(''),'vietnamarmbands','Description not yet submitted.', 'Call a politician: City Council District 1 Margaret Chin (212) 587-3159'));

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
                              var route = new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                  new MovementPage(currentMovement: movements[index],)
                              );
                              Navigator.of(context).push(route);
                            },
                          ),
                          new PictureList(movements[index]),
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              new FlatButton(
                                padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                                child: new Text(
                                  movements[index].movementIssueOne.issueTitle,
                                  style: new TextStyle(
                                    fontFamily: 'PlayfairDisplay',
                                    color: Colors.grey,
                                    fontSize: 20.0,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                  onPressed: () {
                                    var route = new MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                        new IssuePage(currentIssue: movements[index].movementIssueOne, currentMovement: movements[index])
                                    );
                                    Navigator.of(context).push(route);
                                  }),
                              new FlatButton(
                                padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                                child: new Text(
                                  movements[index].movementIssueTwo.issueTitle,
                                  style: new TextStyle(
                                   fontFamily: 'PlayfairDisplay',
                                    color: Colors.grey,
                                  fontSize: 20.0,
                                  fontStyle: FontStyle.italic,
                                ),
                             ),
                                onPressed: () {
                                  var route = new MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                      new IssuePage(currentIssue: movements[index].movementIssueTwo, currentMovement: movements[index])
                                  );
                                  Navigator.of(context).push(route);
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
