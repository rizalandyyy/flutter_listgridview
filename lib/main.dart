import 'package:flutter/material.dart';
import 'package:yard/screen/CustomGridview.dart';
import 'package:yard/screen/horizontal_list.dart';
import 'package:yard/screen/simple_grid.dart';
import 'package:yard/screen/simple_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview & GridView'),
      ),

      body: Center(
        child: Column(
          children: [
            Text('Listview & Gridview'),
            Container(
              padding: EdgeInsets.all(16),
              child: MaterialButton(
                child: Text('Simple List'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PageSimpleList()));
                },
                color: Colors.green,
                textColor: Colors.white,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: MaterialButton(
                child: Text('Horizontal List'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PageHorizontalList()));
                },
                color: Colors.green,
                textColor: Colors.white,
              ),
            ),

            Container(
              padding: EdgeInsets.all(16),
              child: MaterialButton(
                child: Text('Simple Gridview'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PageSimpleGridview()));
                },
                color: Colors.green,
                textColor: Colors.white,
              ),
            ),

            Container(
              padding: EdgeInsets.all(16),
              child: MaterialButton(
                child: Text('Custom Gridview'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PageCustomGridview()));
                },
                color: Colors.green,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
