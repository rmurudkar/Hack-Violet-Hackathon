import 'package:flutter/material.dart';


class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Lilac"),
          backgroundColor: Colors.purple,
        ),
        body: Image.asset("assets/source.gif", height: 500.0, width:500.0),
      ),
    );
  }
}

