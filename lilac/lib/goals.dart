import 'package:flutter/material.dart';
import 'package:lilac/nav.dart';

class Goals extends StatefulWidget {
  @override
  _GoalsState createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {
  List<String> _todoItems = [];

  void _addTodoItem(String task) {
    if (task.length > 0) {
      setState(() => _todoItems.add(task));
    }
  }

  void _removeTodoItem(int index) {
    setState(() => _todoItems.removeAt(index));
  }

  // Function removes a goal
  void _promptRemoveTodoItem(int index) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
              title: Text('Mark "${_todoItems[index]}" as done?'),
              actions: <Widget>[
                FlatButton(
                    child: Text('CANCEL', style: TextStyle(color: Colors.purple),),
                    onPressed: () => Navigator.of(context).pop()),
                FlatButton(
                    child: Text('MARK AS COMPLETED', style: TextStyle(color: Colors.purple),),
                    onPressed: () {
                      _removeTodoItem(index);
                      Navigator.of(context).pop();
                    })
              ]);
        });
  }

  // Constructs our list of goals
  Widget _buildTodoList() {
    return ListView.builder(
      // ignore: missing_return
      itemBuilder: (context, index) {
        if (index < _todoItems.length) {
          return _buildTodoItem(_todoItems[index], index);
        }
      },
    );
  }

  // Adds a new goal to the screen
  void _pushAddTodoScreen() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Scaffold(
          appBar: AppBar(
            title: Text('Add A New Goal'),
            backgroundColor: Colors.purple,
          ),
          body: TextField(
            autofocus: true,
            onSubmitted: (val) {
              _addTodoItem(val);
              Navigator.pop(context); // Close the add todo screen
            },
            decoration: InputDecoration(
                hintText: 'Set new goal...',
                contentPadding: const EdgeInsets.all(16.0)),
          ));
    }));
  }

  // Build a single goal
  Widget _buildTodoItem(String todoText, int index) {
    return ListTile(
        title: Text(todoText), onTap: () => _promptRemoveTodoItem(index));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title:
              Image.asset('assets/flower.png', fit: BoxFit.contain, height: 40),
          backgroundColor: Colors.purple,
        ),
        body: _buildTodoList(),
        floatingActionButton: new FloatingActionButton(
            backgroundColor: Colors.purple,
            onPressed: _pushAddTodoScreen,
            tooltip: 'Add task',
            child: Icon(Icons.add)),
      ),
    );
  }
}