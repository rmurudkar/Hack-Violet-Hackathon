import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset('assets/flower.png', fit: BoxFit.contain, height: 40),
          backgroundColor: Colors.purple,
        ),
        body: Image.asset("assets/Capture.PNG", height: 500.0, width:500.0),
      ),
    );
  }
}