import 'package:flutter/material.dart';

class Home extends StatelessWidget {
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
        body: userGreeting(),
        //bottomNavigationBar: BottomBar(),
      ),
    );
  }
}


class userGreeting extends StatefulWidget {
  @override
  _UserGreetingState createState() => _UserGreetingState();
}

class MoodIcons extends StatefulWidget {
  @override
  _MoodIconsState createState() => _MoodIconsState();
}

class _MoodIconsState extends State<MoodIcons> {
  @override
  Widget build(BuildContext context) {
    // return Row(
    //
    // );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: ImageIcon(
            AssetImage('assets/chill.png'),
            size: 20,
            color: Colors.deepPurpleAccent,),
          // icon: Icon(Icons.volume_up),
          tooltip: 'Chill',
          onPressed: () {
            // setState(() {
            //   _volume += 10;
            // });
          },
        ),
        Text('Chill')
      ],
    );
  }
}


class _UserGreetingState extends State<userGreeting> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 25, horizontal: 30),
          height: 30,
          width: 240,
          color: Colors.transparent,
          child: Text(
            "Hello [User Name],",
            style: TextStyle(fontSize: 25),
          ),
        ),
        UserFeelings(),
        MoodIcons(),
        UserWorries(),
        WorriesInput(),
        UserStress(),
        StressInput(),
        UserChallenge(),
        ChallengeInput(),
      ],
    );
  }
}

class UserFeelings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1, horizontal: 30),
      height: 25,
      width: 240,
      color: Colors.transparent,
      child: Text(
        "How are you feeling today?",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

class UserWorries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      height: 40,
      width: 240,
      color: Colors.transparent,
      child: Text(
        "Jot down any worries you have today:",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

class UserStress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      height: 40,
      width: 240,
      color: Colors.transparent,
      child: Text(
        "Anything stressing you out today?",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

class UserChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      height: 40,
      width: 240,
      color: Colors.transparent,
      child: Text(
        "Did you face any challenges throughout the day?",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

class WorriesInput extends StatefulWidget {
  @override
  _WorriesInputState createState() => _WorriesInputState();
}

class _WorriesInputState extends State<WorriesInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 40),
      height: 80,
      width: 270,
      decoration: new BoxDecoration(
        color: Colors.purple[100],
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
            border: InputBorder.none, hintText: 'Type here...'),
      ),
    );
  }
}

class StressInput extends StatefulWidget {
  @override
  _StressInputState createState() => _StressInputState();
}

class _StressInputState extends State<StressInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 40),
      height: 80,
      width: 270,
      decoration: new BoxDecoration(
        color: Colors.purple[100],
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
            border: InputBorder.none, hintText: 'Type here...'),
      ),
    );
  }
}

class ChallengeInput extends StatefulWidget {
  @override
  _ChallengeInputState createState() => _ChallengeInputState();
}

class _ChallengeInputState extends State<ChallengeInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 40),
      height: 80,
      width: 270,
      decoration: new BoxDecoration(
        color: Colors.purple[100],
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
            border: InputBorder.none, hintText: 'Type here...'),
      ),
    );
  }
}