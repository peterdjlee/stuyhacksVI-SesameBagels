import 'package:flutter/material.dart';

class MovementPage extends StatelessWidget {

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
        alignment: Alignment.center,
        child: new Column(
          children: <Widget>[
            new Row(
              children: <Widget> [
                new Text(
               'PussyyyHats',
                textAlign: TextAlign.center,
                style: new TextStyle(
                  fontFamily: 'PlayfairDisplay',
                  fontSize: 30.0,
                  fontStyle: FontStyle.italic,
                ),
                ),
              ]
            )
            new Row(
              children: <Widget> [
                new FlatButton(
          padding: const EdgeInsets.only(left: 0.0, right: 0.0),
          child: new Image.asset(
            currentMovement.movementPicPaths[0],
            width: 75.0,
            height: 75.0,
            fit: BoxFit.contain,
          ),
          onPressed: () {
            Navigator.of(context).pushNamed('/PicturePage');
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
            Navigator.of(context).pushNamed('/PicturePage');
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
            Navigator.of(context).pushNamed('/PicturePage');
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
            Navigator.of(context).pushNamed('/PicturePage');
          },
        ),
              ]
            )
          ]
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
