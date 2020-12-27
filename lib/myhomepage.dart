import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:pdp_ui_instagram/pages/feed_page.dart';
import 'package:pdp_ui_instagram/pages/search_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 var _pages =[
   FeedPage(),
   SearchPage(),
   FeedPage(),
   SearchPage(),
   SearchPage(),
  ];
 int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(icon: Icon(Feather.camera), onPressed: () {}),
        title: Text(
          'Instagram',
          style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Feather.tv), onPressed:(){}),
          IconButton(icon: Icon(Feather.send), onPressed:(){}),
        ],
      ),
      body: _pages[indexPage],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,

        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            indexPage = value;
          });

        },
        items: [

          BottomNavigationBarItem(title: Text('home'), icon: Icon(Feather.home)),
          BottomNavigationBarItem(title: Text('search'), icon: Icon(Feather.search)),
          BottomNavigationBarItem(title: Text('plus'), icon: Icon(Feather.plus_square)),
          BottomNavigationBarItem(title: Text('love'), icon: Icon(Feather.heart)),
          BottomNavigationBarItem(title: Text('user'), icon: Icon(Feather.user)),

        ],
      ),
    );
  }
}
