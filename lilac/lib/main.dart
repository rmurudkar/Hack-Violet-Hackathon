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
        resizeToAvoidBottomInset: false,
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

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
