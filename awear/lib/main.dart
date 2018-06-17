import 'package:awear/pages/home_page.dart';
import 'package:awear/pages/issue_page.dart';
import 'package:awear/pages/movement_page.dart';
import 'package:awear/pages/picture_page.dart';
import 'package:awear/pages/profile_page.dart';
import 'package:awear/pages/upload_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Awear",
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        fontFamily: 'SongMyung',
        primaryColor: Colors.black,
      ),
      home: new HomePage(),
      routes: <String, WidgetBuilder> {
        "/MovementPage" : (BuildContext context) => new MovementPage(),
        "/HomePage" : (BuildContext context) => new HomePage(),
        "/ProfilePage" : (BuildContext context) => new ProfilePage(),
        "/IssuePage" : (BuildContext context) => new IssuePage(),
        "/UploadPage" : (BuildContext context) => new UploadPage(),
        "/PicturePage" : (BuildContext context) => new PicturePage(),
      },
    );
  }
}