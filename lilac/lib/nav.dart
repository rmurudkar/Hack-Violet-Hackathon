import 'package:flutter/material.dart';
import 'package:lilac/home_screen.dart';
import 'package:lilac/feed_screen.dart';
import 'package:lilac/third_screen.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Feed(),
    ThirdScreen(),
  ];

  void _onItemtap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white70,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text("Home", style: TextStyle(color: Colors.black)),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notes,
                color: Colors.black,
              ),
              title: Text("Goals", style: TextStyle(color: Colors.black)),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.personal_video,
                color: Colors.black,
              ),
              title: Text("Resources", style: TextStyle(color: Colors.black)),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemtap,
        ),
      ),
    );
  }
}
