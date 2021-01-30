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
        resizeToAvoidBottomPadding: false,
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
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          height: 30,
          width: 240,
          color: Colors.transparent,
          child: Text(
            "Hello [User Name],",
            style: TextStyle(fontSize: 25),
          ),
        ),
        userFeelings(),
        FeelingInput(),
      ],
    );
  }
}

class userFeelings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 33, horizontal: 30),
      height: 30,
      width: 240,
      color: Colors.transparent,
      child: Text(
        "How are you feeling today?",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

class FeelingInput extends StatefulWidget {
  @override
  _FeelingInputState createState() => _FeelingInputState();
}

class _FeelingInputState extends State<FeelingInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
      height: 230,
      width: 270,
      decoration: new BoxDecoration(
        color: Colors.pink[100],
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(20.0),
          topRight: const Radius.circular(20.0),
          bottomLeft: const Radius.circular(20.0),
          bottomRight: const Radius.circular(20.0),
        ),
      ),
      child: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: 7,
        decoration: InputDecoration(
            border: InputBorder.none, hintText: 'Enter Your feelings here'),
      ),
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
