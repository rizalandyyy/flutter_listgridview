// @rizalandy ~ PC

import 'package:flutter/material.dart';

class PageNavBarMenu extends StatefulWidget {

  @override
  _PageNavBarMenuState createState() => _PageNavBarMenuState();
}

class _PageNavBarMenuState extends State<PageNavBarMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Nav Bar Menu'),
        backgroundColor: Colors.deepOrange,
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Welcome'),
            ),

            Divider(),
            ListTile(
              title: Text('Tentang'),
              trailing: Icon(Icons.info),
            ),
            ListTile(
              title: Text('Kontak'),
              trailing: Icon(Icons.contact_mail),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/kontak');
              },
            ),
          ],
        ),
      ),

      body: Center(
        child: Text('Home Page Nav', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
      ),
    );
  }
}

// @rizalandy ~ PC