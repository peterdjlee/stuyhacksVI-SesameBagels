import 'package:awear/awear_list.dart';
import 'package:awear/pages/profile_page.dart';
import 'package:awear/pages/upload_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

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
      body: new AwearList(),
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
