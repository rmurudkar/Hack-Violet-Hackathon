import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Lilac"),
          backgroundColor: Colors.purple,
        ),
        body: userGreeting(),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}

class userGreeting extends StatefulWidget {
  @override
  _userGreetingState createState() => _userGreetingState();
}

class _userGreetingState extends State<userGreeting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      height: 120,
      width: 240,
      color: Colors.transparent,
      child: Text("Hello [User Name],", style: TextStyle(fontSize: 17),),
    );
  }
}

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      backgroundColor: Colors.white70,
      items: [
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
            Icons.settings,
            color: Colors.black,
          ),
          title: Text("Settings", style: TextStyle(color: Colors.black)),
        ),
      ],
    );
  }
}
