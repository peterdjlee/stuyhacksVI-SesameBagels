import 'package:awear/issue.dart';
import 'package:awear/pages/issue_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {

  final Issue currentIssue;

  ProfilePage({Key key, this.currentIssue}) : super (key: key);

  @override
  State<StatefulWidget> createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>{

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
          padding: const EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: new AssetImage(
                            'assets/images/profile.jpg',
                          ),
                        ),
                      )
                  ),
                ],
              ),
              new Padding(
                padding: const EdgeInsets.all(16.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      '@peterdjlee',
                      style: new TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(16.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      'Born and raised in NYC. Love dance, puzzles & board games, listening to The Beatles, and writing code.',
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
              ),
              new Padding(
                padding: const EdgeInsets.all(16.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new FlatButton(
                        padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                        child: new Text(
                          '#WomensRights',
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
                              new IssuePage(currentIssue: new Issue('#WomensRights'))
                          );
                          Navigator.of(context).push(route);
                        }),
                    new FlatButton(
                        padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                        child: new Text(
                          '#WomensMarch',
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
                              new IssuePage(currentIssue: new Issue('#WomensMarch'))
                          );
                          Navigator.of(context).push(route);
                        }),
                    new FlatButton(
                        padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                        child: new Text(
                          '#BlackLivesMatter',
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
                              new IssuePage(currentIssue: new Issue('#BlackLivesMatter'))
                          );
                          Navigator.of(context).push(route);
                        }),
                    new FlatButton(
                        padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                        child: new Text(
                          '#Racism',
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
                              new IssuePage(currentIssue: new Issue('#Racism'))
                          );
                          Navigator.of(context).push(route);
                        }),
                    new FlatButton(
                        padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                        child: new Text(
                          '#RecycledMaterials',
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
                              new IssuePage(
                                currentIssue: new Issue('#RecycledMaterials'))
                          );
                          Navigator.of(context).push(route);
                        }),
                    new FlatButton(
                        padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                        child: new Text(
                          '#War',
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
                              new IssuePage(currentIssue: new Issue('#War'))
                          );
                          Navigator.of(context).push(route);
                        }),
                  ],
                ),
              )
            ],
          )
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
