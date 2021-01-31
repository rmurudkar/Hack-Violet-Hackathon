import 'package:flutter/material.dart';
import 'package:lilac/screens/home_screen.dart';
import 'package:lilac/screens/feed_screen.dart';
import 'package:lilac/screens/third_screen.dart';


class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex=0;
  List<Widget> _widgetOptions= <Widget>[
    Home(),
    Feed(),
    ThirdScreen(),
  ];

  void _onItemtap(int index) {
    setState(() {
      _selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Icons.people,
              color: Colors.black,
            ),
            title: Text("Feed", style: TextStyle(color: Colors.black)),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.tag_faces,
              color: Colors.black,
            ),
            title: Text("Settings", style: TextStyle(color: Colors.black)),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemtap,
      ),
    );
  }
}


