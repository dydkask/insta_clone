import 'package:flutter/material.dart';
import 'package:insta_clone/screens/profile_screen.dart';

import 'constants/screen_size.dart';
import 'screens/feed_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<BottomNavigationBarItem> list = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.healing), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
  ];
  int _selectedIndex = 0;

  static List<Widget> _screens = <Widget>[
    FeedScreen(),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    if (size == null) size = MediaQuery.of(context).size;

    return MaterialApp(
      home: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: list,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black87,
          currentIndex: _selectedIndex,
          onTap: _onBtnItemClick,
        ),
      ),
    );
  }

  void _onBtnItemClick(int index) {
    print(index);
    setState(() {
      _selectedIndex = index;
    });
  }
}
