import 'package:flutter/material.dart';
class PageHorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Horizontal'),
        backgroundColor: Colors.orange,
      ),

      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 160.0,
              width: 200.0,
              color: Colors.red,
            ),
            Container(
              height: 160.0,
              width: 200.0,
              color: Colors.yellow,
            ),
            Container(
              height: 160.0,
              width: 200.0,
              color: Colors.green,
            ),
            Container(
              height: 160.0,
              width: 200.0,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
