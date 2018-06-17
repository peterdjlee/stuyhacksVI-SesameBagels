import 'package:awear/pages/home_page.dart';
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
    );
  }
}