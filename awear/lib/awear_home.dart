import 'package:awear/awear_list.dart';
import 'package:flutter/material.dart';

class AwearHome extends StatelessWidget {

  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    elevation: 1.0,
    title: new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Text(
          'Awear',
          style: new TextStyle(
            color: Colors.black
            //TODO: Add font
          )
        ),
      ],
    )
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
                  ),
                  onPressed: () {},
              ),
              new IconButton(
                icon: Icon(
                  Icons.add_a_photo,
                ),
                onPressed: () {},
              ),
              new IconButton(
                icon: Icon(
                  Icons.account_circle,
                ),
                onPressed: () {},
              ),
            ],
          )
        )
      ),
    );
  }
}
