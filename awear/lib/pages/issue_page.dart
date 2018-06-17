import 'package:awear/issue.dart';
import 'package:awear/movement.dart';
import 'package:awear/pages/profile_page.dart';
import 'package:awear/pages/upload_page.dart';
import 'package:awear/picture_list.dart';
import 'package:flutter/material.dart';

class IssuePage extends StatefulWidget {
  final Issue currentIssue;
  final Movement currentMovement;

  IssuePage({Key key, this.currentIssue, this.currentMovement}) : super (key: key);

  @override
  State<StatefulWidget> createState() => new _IssuePageState();
}

class _IssuePageState extends State<IssuePage>{

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
                  '${widget.currentIssue.issueTitle}',
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
                child: widget.currentMovement == null
                    ? new Container()
                    : new PictureList(widget.currentMovement)
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
//                    var route = new MaterialPageRoute(
//                        builder: (BuildContext context) =>
//                        new HomePage()
//                    );
//                    Navigator.of(context).push(route);
                    },
                  ),
                  new IconButton(
                    icon: Icon(
                      Icons.add_a_photo,
                      size: 30.0,
                    ),
                    onPressed: () {
                      var route = new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new UploadPage()
                      );
                      Navigator.of(context).push(route);
                    },
                  ),
                  new IconButton(
                    icon: Icon(
                      Icons.account_circle,
                      size: 30.0,
                    ),
                    onPressed: () {
                      var route = new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new ProfilePage()
                      );
                      Navigator.of(context).push(route);
                    },
                  ),
                ],
              )
          )
      ),
    );
  }
}
