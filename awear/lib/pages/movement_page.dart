import 'package:awear/movement.dart';
import 'package:awear/pages/issue_page.dart';
import 'package:awear/pages/picture_page.dart';
import 'package:awear/picture_list.dart';
import 'package:flutter/material.dart';

class MovementPage extends StatefulWidget {
  final Movement currentMovement;

  MovementPage({Key key, this.currentMovement}) : super (key: key);

  @override
  State<StatefulWidget> createState() => new _MovementPageState();
}

class _MovementPageState extends State<MovementPage>{

  final topBar = new AppBar(
    centerTitle: true,
    backgroundColor: new Color(0xfff8faf8),
    elevation: 1.0,
    title: new Text(
        'AWEAR',
        style: new TextStyle(
          color: Colors.black,
          fontFamily: 'Raleway',
          fontSize: 25.0,
        )
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topBar,
      body: new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Column(
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  '${widget.currentMovement.movementTitle}',
                  style: new TextStyle(
                    fontFamily: 'PlayfairDisplay',
                    fontSize: 40.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
              child: new PictureList(widget.currentMovement)
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  widget.currentMovement.movementDescription,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: new TextStyle(
                    fontFamily: 'PlayfairDisplay',
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new FlatButton(
                      padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                      child: new Text(
                        widget.currentMovement.movementIssueOne.issueTitle,
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
                            new IssuePage(currentIssue: widget.currentMovement.movementIssueOne, currentMovement: widget.currentMovement)
                        );
                        Navigator.of(context).push(route);
                      }),
                  new FlatButton(
                    padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                    child: new Text(
                      widget.currentMovement.movementIssueTwo.issueTitle,
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
                          new IssuePage(currentIssue: widget.currentMovement.movementIssueTwo, currentMovement: widget.currentMovement)
                      );
                      Navigator.of(context).push(route);
                    },
                  ),
                ],
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: new Column(
                children: <Widget>[
                  new Icon(
                    Icons.call,
                    size: 30.0,
                  )
                ],
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: new Column(
                children: <Widget>[
                  new Text(
                    widget.currentMovement.movementContact,
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontFamily: 'PlayfairDisplay',
                      color: Colors.black,
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic,
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: new Container(
          color: Colors.white,
          height: 50.0,
          alignment: Alignment.center,
          child: new BottomAppBar(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new IconButton(
                    icon: Icon(
                      Icons.home,
                      size: 30.0,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/AwearPage');
                    },
                  ),
                  new IconButton(
                    icon: Icon(
                      Icons.add_a_photo,
                      size: 30.0,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/UploadPage');
                    },
                  ),
                  new IconButton(
                    icon: Icon(
                      Icons.account_circle,
                      size: 30.0,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/ProfilePage');
                    },
                  ),
                ],
              )
          )
      ),
    );
  }
}
