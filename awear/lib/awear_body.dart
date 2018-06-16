import 'package:awear/awear_list.dart';
import 'package:flutter/material.dart';

class AwearBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Flexible(child: new AwearList())
      ],
    );
  }
}
