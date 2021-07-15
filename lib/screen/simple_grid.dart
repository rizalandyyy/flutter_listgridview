import 'package:flutter/material.dart';

class PageSimpleGridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Gridview'),
      ),
      body: GridView.count(crossAxisCount: 4,
      children: List.generate(12, (index) {
        int nIndex = index + 1;
        String dataIndex = "$nIndex";

        return Center(
          child: Container(
            color: Colors.amber,
            margin: EdgeInsets.all(10),
            height: 100.0,
            width: 100.0,
            child: Text(
              'Data Text ke - $dataIndex', style: Theme.of(context).textTheme.headline1,
            ),
          ),
        );
      }),
      ),
    );
  }
}
