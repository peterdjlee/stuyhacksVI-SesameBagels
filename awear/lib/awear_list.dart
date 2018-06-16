import 'package:flutter/material.dart';

class AwearList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemBuilder: (context, index) {
        return _buildRow();
      },
    );
  }

//  Widget _buildRow() {
//    return new listTile(
//      title: new Text
//    )
//  }
//}
