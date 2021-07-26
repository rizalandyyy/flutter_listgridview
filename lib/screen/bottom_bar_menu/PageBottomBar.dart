// @rizalandy ~ PC

import 'package:flutter/material.dart';
import 'package:yard/screen/bottom_bar_menu/PageWidgetBottomBar.dart';

class PageBottomBarMenu extends StatefulWidget {

  @override
  _PageBottomBarMenuState createState() => _PageBottomBarMenuState();
}

class _PageBottomBarMenuState extends State<PageBottomBarMenu> {

  int currentIndex = 0;

  final List<Widget> _listColorMenu = [
    PageWidget(Colors.deepOrange, color: Colors.deepOrange,),
    PageWidget(Colors.blue, color: Colors.blue,),
    PageWidget(Colors.brown, color: Colors.brown,),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Bottom Bar'),
        backgroundColor: Colors.brown,
      ),

      body: _listColorMenu[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text('Message')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail),
              title: Text('Contact')
          ),

        ]
      ),
    );
  }

  void onTabTapped(int index){
    setState(() {
      currentIndex = index;
    });
  }
}

// @rizalandy ~ PC
