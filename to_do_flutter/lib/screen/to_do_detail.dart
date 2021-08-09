import 'package:flutter/material.dart';
import 'package:to_do_flutter/model/to_do.dart';

class ToDoDetailScreen extends StatefulWidget {
  final ToDo todo;

  const ToDoDetailScreen({Key? key, required this.todo}) : super(key: key);

  @override
  _ToDoDetailScreenState createState() => _ToDoDetailScreenState();
}

class _ToDoDetailScreenState extends State<ToDoDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text("Todo Detail")),
      body: Column(
        children: [
          Flexible(
              flex: 1,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Text(
                        widget.todo.name,
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        widget.todo.number,
                        style: TextStyle(fontSize: 25),
                      )
                    ],
                  ),
                ),
              )),
          Flexible(flex: 2, child: Container())
        ],
      ),
    ));
  }
}
